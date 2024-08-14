import 'package:flutter/material.dart';
import 'package:online_learning_app/theme/const_color.dart';

class OnBoarding extends StatelessWidget {
  final Image img;
  final String title1;
  final String title2;

  const OnBoarding({
    super.key,
    required this.img,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        img,
        const SizedBox(
          height: 20,
        ),
        Text(
          title1,
          style: const TextStyle(
              color: textcolor, fontSize: 22, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title2,
          style: const TextStyle(
            color: whitecolor,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
