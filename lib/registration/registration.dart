import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gorika/registration/registration_controller.dart';
import '../themes/colors.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationController button = Get.put(RegistrationController());

    return Obx(
      () => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _EmailInput(),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => {button.sendEmail()},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: button.isValid.value
                        ? AppColors.gMint
                        : AppColors.gDarkGray,
                  ),
                  width: 290,
                  height: 70,
                  child: Center(
                    child: Text(
                      'дальше',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegistrationController controller = Get.put(RegistrationController());
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: controller.inputState.value == 'passive'
              ? AppColors.gGrayLight
              : AppColors.gRufous,
        ),
        child: SizedBox(
          width: 290,
          height: 70,
          child: Center(
            child: TextField(
              onChanged: (text) => {controller.changeInputText(text)},
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              cursorHeight: 25,
              onTap: () => {controller.colorChanger('focused')},
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.gBlack,
                  ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'name@mailbox.com',
                hintStyle: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: AppColors.gGray),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
