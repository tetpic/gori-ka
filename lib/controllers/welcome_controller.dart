import 'dart:async';

import 'package:get/state_manager.dart';

class LoadingController extends GetxController {
  var isLoaded = true.obs;
  static const milliseconds = 4000;
  // TODO(nik): fetch some data, and then change this value
  void main() {
    Timer(const Duration(milliseconds: milliseconds),
        () => {_changeLoaderState(false)});
  }

  void _changeLoaderState(state) {
    // ignore: avoid_print
    print('change');
    isLoaded.value = state;
  }
}
