import 'package:get/state_manager.dart';

class AuthorizationController extends GetxController {
  var getNews = true.obs;
  var agreement = true.obs;

  void changeNewsCheckbox() {
    getNews.value = getNews.value == false ? true : false;
  }

  void changeAgreementsCheckbox() {
    agreement.value = agreement.value == false ? true : false;
  }
}
