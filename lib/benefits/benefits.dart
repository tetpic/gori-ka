import 'package:flutter/material.dart';

import '../themes/colors.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: (Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_rounded, size: 24),
              onPressed: () {
                // ...
              },
            ),
            Text('Преимущество 1',
                style: Theme.of(context).textTheme.headlineMedium),
            IconButton(
              icon: const Icon(Icons.cancel_outlined, size: 24),
              onPressed: () {
                // ...
              },
            ),
          ],
        ),
        Column(
          children: [
            Column(
              children: [
                Text(
                  'Шикарное преимущество номер 1',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Очень много интересного текста обо всём на свете два раза повторить бы, но не комильфо, конечно.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.gGray),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.gMint,
                        ),
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.gGrayLight,
                        ),
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.gGrayLight,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
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
            ),
          ],
        )
      ],
    )));
  }
}
