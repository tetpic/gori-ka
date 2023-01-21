import 'package:get/state_manager.dart';

class BenefitsController extends GetxController {
  var isLoaded = false.obs;
  var benefitsContent = {}.obs;
  var benefitsCounter = 0.obs;
  var activeItem = 0.obs;
  var isEnd = false.obs;

  void setContent(index) {
    isLoaded.value = true;
    var content = [
      {
        'title': 'Мы реально круты!',
        'subtitle': 'Преимущество номер 1',
        'body': 'Постепенно обучаясь мы разрабатываем нечто классное...',
      },
      {
        'title': 'Конечно, разработать приложение может каждый...',
        'subtitle': 'Преимущество номер 2',
        'body': '...но пока что не знаем что конкретно у нас получится',
      },
      {
        'title': 'Поэтому давайте начнем с регистрации :)',
        'subtitle': 'Преимущество номер 3',
        'body': 'А там и посмотрим!',
      },
    ];
    benefitsContent.value = content[index];
    benefitsCounter.value = content.length;
    activeItem.value = index;
  }

  void isItAll() {
    var result = activeItem.value == benefitsCounter.value - 1;
    isEnd.value = result;
    // ignore: avoid_print
    print(activeItem.value);
    // ignore: avoid_print
    print(benefitsCounter.value);
  }

  void nextItem() {
    // activeItem.value += 1;
    // isItAll();
    setContent(activeItem.value + 1);
  }

  void prevItem() {
    activeItem.value -= 1;
    setContent(activeItem.value);
  }
}
