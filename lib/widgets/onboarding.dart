import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning_app/theme/font_style.dart';

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
      verticalDirection: VerticalDirection.down,
      children: [
        img,
        SizedBox(
          height: 20.h,
        ),
        Text(
          title1,
          textAlign: TextAlign.center,
          style: fontstyle22,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title2,
          style: fontstyle16),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
