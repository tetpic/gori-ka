import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorika/controllers/benefits_controller.dart';
import 'package:gorika/pages/registration/registration.dart';

import '../../themes/colors.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    BenefitsController controller = Get.put(BenefitsController());

    controller.setContent(0);
    var limit = controller.benefitsCounter.value;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.gWhiteTotal,
          title: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              BenefitsAppBar(controller: controller, limit: limit),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: const [
                  _BenefitsContent(),
                  _BenefitsButtons(),
                ],
              ),
            ],
          ),
        ));
  }
}

class BenefitsAppBar extends StatelessWidget {
  const BenefitsAppBar({
    Key? key,
    required this.controller,
    required this.limit,
  }) : super(key: key);

  final BenefitsController controller;
  final int limit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
              color: AppColors.gBlack, Icons.arrow_back_rounded, size: 24),
          onPressed: () {
            controller.activeItem.value > 0 &&
                    controller.activeItem.value < limit
                ? controller.prevItem()
                : true;
          },
        ),
        Obx(
          () => Text(controller.benefitsContent['subtitle'],
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        IconButton(
          icon: const Icon(
              color: AppColors.gBlack, Icons.cancel_outlined, size: 24),
          onPressed: () =>
              Get.to(const Registration(), transition: Transition.upToDown),
        ),
      ],
    );
  }
}

class _BenefitsContent extends StatelessWidget {
  const _BenefitsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BenefitsController controller = Get.put(BenefitsController());
    var contentLength = controller.benefitsCounter.value;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            controller.benefitsContent['title'],
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Obx(
          () => Text(
            controller.benefitsContent['body'],
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.gGray),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 30,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < contentLength; i++)
                Obx(
                  () => Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: controller.activeItem.value == i
                          ? AppColors.gMint
                          : AppColors.gGrayLight,
                    ),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}

class _BenefitsButtons extends StatelessWidget {
  const _BenefitsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BenefitsController controller = Get.put(BenefitsController());
    var limit = controller.benefitsCounter.value - 1;

    void textButtonHandler(theme) {
      if (controller.activeItem.value < limit &&
          controller.activeItem.value >= 0) {
        controller.nextItem();
      } else {
        Get.to(() => const Registration());
      }
    }

    void changeTheme() {
      controller.changeTheme();
      controller.activeTheme.value == 'white'
          ? Get.changeThemeMode(ThemeMode.dark)
          : Get.changeThemeMode(ThemeMode.light);
    }

    return Column(
      children: [
        TextButton(
          onPressed: () => {textButtonHandler(false)},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: AppColors.gMint,
            ),
            width: 290,
            height: 70,
            child: Center(
              child: Text('дальше',
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: () => {changeTheme()},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: AppColors.gGrayLight,
            ),
            width: 290,
            height: 70,
            child: Center(
              child: Text(
                'сменить тему',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.gGray),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
