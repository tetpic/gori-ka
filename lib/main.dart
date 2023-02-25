import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorika/pages/authorization/authorization.dart';
import 'package:gorika/pages/benefits/benefits.dart';
import 'package:gorika/pages/loading_page/loading_page.dart';
import 'package:gorika/pages/registration/registration.dart';
import 'package:gorika/themes/black_theme.dart';
import 'package:gorika/themes/light_theme.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'controllers/welcome_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final LoadingController controller = Get.put(LoadingController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      theme: GoriLightTheme.lightTheme,
      darkTheme: GoriDarkTheme.darkTheme,
      themeMode: ThemeMode.light,
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
  const _Starter();

  @override
  Widget build(BuildContext context) {
    final LoadingController controller = Get.put(LoadingController());
    controller.changeTheme().then((name) => {
          name == 'dark'
              ? Get.changeThemeMode(ThemeMode.dark)
              : Get.changeThemeMode(ThemeMode.light)
        });

    // ignore: avoid_print
    print(controller.isLoaded.value);
    controller.main();
    return Obx(() =>
        controller.isLoaded.value ? const LoadingPage() : const Benefits());
  }
}
