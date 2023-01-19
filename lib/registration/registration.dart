import 'package:flutter/material.dart';
import '../themes/colors.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const EmailInput(),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () => {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: AppColors.gMint,
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
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.gGrayLight,
      ),
      child: SizedBox(
        width: 290,
        height: 70,
        child: Center(
          child: TextField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            cursorHeight: 25,
            // strutStyle: const StrutStyle(fontSize: 25),
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
    );
  }
}
