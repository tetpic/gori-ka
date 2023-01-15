import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:gorika/loading_page/loading_page.dart';
import 'package:gorika/themes/light_theme.dart';

import 'benefits/benefits.dart';
import 'controllers/welcome_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: GoriLightTheme.lightTheme,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: const Scaffold(
          body: Benefits(),
        ));
  }
}

// class _Starter extends StatelessWidget {
//   const _Starter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final loadingState = Get.put(LoadingController);
//     switch (loadingState) {
//       case false:
//         return const LoadingPage();

//       default:
//     }
//     return const LoadingPage();

//     // switch (expression) {
//     //   case value:
//     //     break;
//     //   default:
//     //     const LoadingPage();
//     // }
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:',
                style: Theme.of(context).textTheme.displayLarge),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
