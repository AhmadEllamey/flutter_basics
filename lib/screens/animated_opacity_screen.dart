import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => AnimatedOpacityScreenState();
}

class AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 3),
              child: const FlutterLogo(size: 150),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: _changeOpacity,
              child: const Text('Fade Logo'),
            ),
          ],
        ),
      ),
    );
  }
}