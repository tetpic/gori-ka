import 'package:get/state_manager.dart';

class RegistrationController extends GetxController {
  var inputState = "passive".obs;
  var inputValue = ''.obs;
  var isValid = false.obs;

  void colorChanger(String state) {
    switch (state) {
      case "focused":
        inputState.value = "focused";
        break;
      case 'error':
        inputState.value = 'error';
        break;

      default:
    }
  }

  void changeInputText(String text) {
    inputValue.value = text;
    isValidEmail();
  }

  void isValidEmail() {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    isValid.value = emailRegExp.hasMatch(inputValue.value) ? true : false;
  }

  void sendEmail() {
    isValid.value == true
        ?
        // ignore: avoid_print
        print('sended')
        // ignore: avoid_print
        : print('not valid');
  }
}
