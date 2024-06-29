import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key,required this.superTitle});

  final String superTitle;

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  // String? title;

  @override
  void initState() {
    super.initState();
    // if we need to use context in the initState function
    // we use this to give a time for the context to be initialized
    // Future.delayed(Duration.zero).then((_) {
    //   setState(() {
    //     title = ModalRoute.of(context)!.settings.arguments as String;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.of(context).pop(9);
          },
          child: Text(
            widget.superTitle,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
