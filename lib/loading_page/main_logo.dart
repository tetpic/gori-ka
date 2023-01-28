import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  final double fSize;
  final double imgWidth;
  final String textBody;
  const MainLogo({
    Key? key,
    required this.fSize,
    required this.imgWidth,
    required this.textBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(width: imgWidth, 'images/gorilka-logo.png'),
        const SizedBox(
          height: 10,
        ),
        Text('Gōri-ka $textBody',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontSize: fSize)),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
