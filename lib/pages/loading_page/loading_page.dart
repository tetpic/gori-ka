import 'package:flutter/material.dart';
import 'package:gorika/pages/loading_page/main_logo.dart';
import 'package:gorika/themes/colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _LoadingBar(),
            const SizedBox(
              height: 40,
            ),
            const MainLogo(fSize: 40, imgWidth: 180, textBody: ''),
            const SizedBox(
              height: 180,
            ),
            Text('Версия 0.0.2',
                style: Theme.of(context).textTheme.displaySmall)
          ],
        ),
      ),
    );
  }
}

// TODO(loading page): сделать прогресс бар зависимым от загрузки данных приложения (когда будет готов бэк)
class _LoadingBar extends StatelessWidget {
  const _LoadingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.gWhiteTotal,
      ),
      clipBehavior: Clip.hardEdge,
      width: 160,
      height: 10,
      child: const LinearProgressIndicator(
        backgroundColor: AppColors.gWhiteTotal,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.gMint),
      ),
    );
  }
}
