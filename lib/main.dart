import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/second_screen.dart';
import 'package:flutter_basics/screens/third_screen.dart';
import 'screens/animated_container_example.dart';
import 'screens/animated_opacity_screen.dart';
import 'screens/did_widget_update_example.dart';
import 'screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // todo ---> use one of the navigation styles

      /// normal route navigation
      // home: const FirstScreen(title: "Hello"),

      /// named route navigation
      // initialRoute: "/first_screen",
      // routes: {
      //   "/first_screen": (context) {
      //     return const FirstScreen(title: "First Screen");
      //   },
      //   "/second_screen": (context) {
      //     return const SecondScreen(title: "hello",);
      //   },
      //   "/third_screen": (context) {
      //     return const ThirdScreen();
      //   },
      //   "/did_widget_update_screen": (context) {
      //     return const DidUpdateWidget();
      //   },
      //   "/animated_container_screen": (context) {
      //     return const AnimatedContainerScreen();
      //   },
      //   "/animated_opacity_screen": (context) {
      //     return const AnimatedOpacityScreen();
      //   },
      // },

      /// named route navigation with onGenerate options
      initialRoute: "/animated_opacity_screen",
      onGenerateRoute: (routeSettings) {
        /// we get the route arguments
        final args = routeSettings.arguments;
        /// we get the route name
        final name = routeSettings.name;

        switch (name) {
          case "/first_screen":
            {
              return MaterialPageRoute(
                  builder: (_) => const FirstScreen(title: "First Screen"));
            }
          case "/second_screen":
            {
              return MaterialPageRoute(builder: (_) => const SecondScreen(title: "",));
            }
          case "/third_screen":
            {
              return MaterialPageRoute(builder: (_) => ThirdScreen(superTitle: args as String,));
            }
          case "/did_widget_update_screen":
            {
              return MaterialPageRoute(builder: (_) => const DidUpdateWidget());
            }
          case "/animated_container_screen":
            {
              return MaterialPageRoute(builder: (_) => const AnimatedContainerScreen());
            }
          case "/animated_opacity_screen":
            {
              return MaterialPageRoute(builder: (_) => const AnimatedOpacityScreen());
            }
          default:
            {
              /// in case of route not found we show this widget for example
              /// instead of throwing an error
              return MaterialPageRoute(
                builder: (_) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Invalid Route'),
                    ),
                    body: const Center(
                      child: Text('Invalid Route'),
                    ),
                  );
                },
              );
            }
        }
      },
    );
  }
}
