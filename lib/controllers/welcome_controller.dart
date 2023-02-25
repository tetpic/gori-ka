import 'dart:async';

import 'package:get/state_manager.dart';
import 'package:hive/hive.dart';

class LoadingController extends GetxController {
  var isLoaded = true.obs;
  var chosenTheme = 'white'.obs;
  static const milliseconds = 4000;
  // TODO(nik): fetch some data, and then change this value
  void main() {
    Timer(const Duration(milliseconds: milliseconds),
        () => {_changeLoaderState(false)});
  }

  void _changeLoaderState(state) {
    // ignore: avoid_print
    print('changeLoaderstate');
    isLoaded.value = state;
  }

  Future changeTheme() async {
    var theme = await Hive.openBox('theme');
    var themeName = theme.get('themeName') ?? 'white';
    print('welcome: ' + themeName);
    chosenTheme.value = themeName as String;
    return themeName;
  }
}
