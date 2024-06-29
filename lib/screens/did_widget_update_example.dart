import 'package:flutter/material.dart';

class DidUpdateWidget extends StatefulWidget {
  const DidUpdateWidget({super.key});

  @override
  State<DidUpdateWidget> createState() => _DidUpdateWidgetState();
}

class _DidUpdateWidgetState extends State<DidUpdateWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: const Icon(Icons.add),
        ),
        body: ChildWidget(counter: _counter),
      ),
    );
  }
}

class ChildWidget extends StatefulWidget {
  const ChildWidget({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {

  @override
  void initState() {
    super.initState();
    debugPrint("Name ----> initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("Name ----> didChangeDependencies");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    debugPrint("Name ----> setState");
  }

  @override
  void didUpdateWidget(covariant ChildWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("Name ----> didUpdateWidget");

    if (oldWidget.counter != widget.counter) {
      debugPrint(
          "The old widget with counter: ${oldWidget.counter}  was replaced with new widget with counter: ${widget.counter}");
    }
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("Name ----> deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("Name ----> dispose");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build Method");
    return Scaffold(
      body: Center(
        child: Text("${widget.counter}"),
      ),
    );
  }
}
