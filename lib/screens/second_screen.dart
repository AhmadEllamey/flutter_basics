import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Clicked on the second screen");
        // todo ---> add action
      },
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop(10);
            },
            child: const Text(
              "Second Screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
