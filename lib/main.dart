import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:gorika/loading_page/loading_page.dart';
import 'package:gorika/registration/registration.dart';
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
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          body: _Starter(),
        ));
  }
}

class _Starter extends StatelessWidget {
  const _Starter({super.key});

  @override
  Widget build(BuildContext context) {
    final LoadingController controller = Get.put(LoadingController());
    // ignore: avoid_print
    print(controller.isLoaded.value);
    controller.main();
    return Obx(() =>
        controller.isLoaded.value ? const LoadingPage() : const Registration());

    // switch (expression) {
    //   case value:
    //     break;
    //   default:
    //     const LoadingPage();
    // }
  }
}

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
