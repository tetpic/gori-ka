import 'package:flutter/material.dart';
import 'package:gorika/themes/colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const _LoadingBar(),
          const SizedBox(
            height: 40,
          ),
          Image.asset('images/gorilka-logo.png'),
          Text('Gōri-ka', style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(
            height: 180,
          ),
          Text('Версия 0.0.2', style: Theme.of(context).textTheme.displaySmall)
        ],
      ),
    );
  }
}

class _LoadingBar extends StatelessWidget {
  const _LoadingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.gMint,
      ),
      width: 160,
      height: 10,
    );
  }
}
