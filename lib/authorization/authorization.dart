import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorika/authorization/authorization_controller.dart';
import 'package:gorika/loading_page/main_logo.dart';
import 'package:gorika/registration/registration.dart';
import 'package:gorika/themes/colors.dart';

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    // AuthorizationController controller = Get.put(AuthorizationController());
    return Scaffold(
      appBar: AppBar(
        title: const AuthorizationAppBar(),
        elevation: 0,
        backgroundColor: AppColors.gWhiteTotal,
      ),
      body: Column(children: const [
        MainLogo(fSize: 20, imgWidth: 90, textBody: 'ID'),
        AuthorizationInputs(),
        Text('Пароль отправится Вам снова через 58 сек.'),
        AuthorizationCheckboxes(),
      ]),
    );
  }
}

class AuthorizationCheckboxes extends StatelessWidget {
  const AuthorizationCheckboxes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthorizationController controller = Get.put(AuthorizationController());
    return Obx(() => SizedBox(
          width: 290,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => controller.changeNewsCheckbox(),
                    child: AnimatedContainer(
                      width: 20,
                      height: 20,
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: controller.getNews.value
                            ? null
                            : Border.all(
                                color: AppColors.gBlack,
                                width: 2.0,
                              ),
                        color: controller.getNews.value
                            ? AppColors.gMint
                            : AppColors.gWhiteBad,
                      ),
                      child: controller.getNews.value
                          ? const Icon(
                              size: 10,
                              Icons.check,
                              color: AppColors.gWhiteBad,
                            )
                          : null,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Получать новости проекта.'),
                      Text('Один раз в месяц.'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => controller.changeAgreementsCheckbox(),
                    child: AnimatedContainer(
                      width: 20,
                      height: 20,
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: controller.agreement.value
                            ? null
                            : Border.all(
                                color: AppColors.gBlack,
                                width: 2.0,
                              ),
                        color: controller.agreement.value
                            ? AppColors.gMint
                            : AppColors.gWhiteBad,
                      ),
                      child: controller.agreement.value
                          ? const Icon(
                              size: 10,
                              Icons.check,
                              color: AppColors.gWhiteBad,
                            )
                          : null,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Я согласен(-а) с условиями'),
                      Text('Правил использования площадки'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class AuthorizationInputs extends StatelessWidget {
  const AuthorizationInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 136,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: AppColors.gGrayLighter,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorHeight: 25,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.gBlack,
                    ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '***',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppColors.gGray),
                ),
              ),
            ],
          ),
        ),
        const Text('-'),
        Container(
          width: 136,
          height: 70,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: AppColors.gGrayLighter,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorHeight: 25,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.gBlack,
                    ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "***",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppColors.gGray),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AuthorizationAppBar extends StatelessWidget {
  const AuthorizationAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
          onPressed: (() => Get.to(() => const Registration())),
          icon: const Icon(color: AppColors.gBlack, Icons.arrow_back_rounded)),
      Text(
        'Введите пароль',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      const SizedBox(width: 1),
    ]);
  }
}
