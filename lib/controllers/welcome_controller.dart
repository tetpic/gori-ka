import 'dart:async';

import 'package:get/state_manager.dart';

class LoadingController extends GetxController {
  var isLoaded = false.obs;
  // TODO(nik): fetch some data, and then change this value

  Timer scheduleTimeout([int milliseconds = 5000]) => Timer(
      Duration(milliseconds: milliseconds), () => {_changeLoaderState(true)});

  void _changeLoaderState(state) {
    isLoaded = state;
  }
}
