import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorika/authorization/authorization.dart';
import 'package:gorika/benefits/benefits.dart';
import 'package:gorika/loading_page/loading_page.dart';
import 'package:gorika/registration/registration.dart';
import 'package:gorika/themes/light_theme.dart';

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
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: (() => const _Starter())),
        GetPage(name: '/registration', page: (() => const Registration())),
        GetPage(name: '/authorization', page: (() => const Authorization()))
      ],
    );
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
        controller.isLoaded.value ? const LoadingPage() : const Benefits());
  }
}
