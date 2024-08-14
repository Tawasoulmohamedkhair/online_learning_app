import 'package:flutter/material.dart';
import 'package:online_learning_app/widgets/onboarding.dart';
import 'package:online_learning_app/widgets/skip_button.dart';

class OnbardingEasyLearning extends StatelessWidget {
  const OnbardingEasyLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        skipbutton(),
        Center(
          child: OnBoarding(
            img: Image.asset("assets/images/quick_learning.png"),
            title1: "Quick and easy learning ",
            title2:
                "Easy and fast learning  at \n  any time to help you \n improve various skills",
          ),
        ),
      ],
    );
  }
}
