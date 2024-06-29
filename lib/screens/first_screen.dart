import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key, required this.title});

  final String title;

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> with WidgetsBindingObserver {
  int? selected;

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
  void didUpdateWidget(covariant FirstScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("Name ----> didUpdateWidget");
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

  List<String> names = [
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud",
    "Ahmad",
    "Mohamed",
    "Ali",
    "Mahmoud"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: InkWell(
                    onTap: () {
                      // todo
                      // print("the name is -----> ${names.elementAt(index)}");
                      // setState(() {
                      //   selected = index;
                      // });

                      // normal
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const SecondScreen(title: "Hello World");
                      //     },
                      //   ),
                      // ).then((value){
                      //   if (value is int){
                      //     setState(() {
                      //       selected = index;
                      //     });
                      //   }
                      // });
                      // Navigator.of(context).pushNamed(
                      //   "/third_screen",
                      //   arguments: names.elementAt(index),
                      // ).then((value){
                      //   if (value is int){
                      //     setState(() {
                      //       selected = index;
                      //     });
                      //   }
                      // });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: selected == index ? Colors.purple : Colors.blue,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          names.elementAt(index),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
