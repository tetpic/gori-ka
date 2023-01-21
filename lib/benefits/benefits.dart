import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorika/benefits/benefits_controller.dart';
import 'package:gorika/registration/registration.dart';

import '../themes/colors.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    BenefitsController controller = Get.put(BenefitsController());

    controller.setContent(0);
    var limit = controller.benefitsCounter.value;
    return Scaffold(
      body: Center(
          child: (Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_rounded, size: 24),
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
                icon: const Icon(Icons.cancel_outlined, size: 24),
                onPressed: () => Get.to(const Registration(),
                    transition: Transition.upToDown),
              ),
            ],
          ),
          Column(
            children: const [
              _BenefitsContent(),
              SizedBox(
                height: 15,
              ),
              _BenefitsButtons(),
            ],
          )
        ],
      ))),
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

    void textButtonHandler() {
      if (controller.activeItem.value < limit &&
          controller.activeItem.value >= 0) {
        controller.nextItem();
      } else {
        Get.to(() => const Registration());
      }
    }

    return Column(
      children: [
        TextButton(
          onPressed: () => {textButtonHandler()},
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
          onPressed: () => {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: AppColors.gGrayLight,
            ),
            width: 290,
            height: 70,
            child: Center(
              child: Text(
                'пропустить',
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
