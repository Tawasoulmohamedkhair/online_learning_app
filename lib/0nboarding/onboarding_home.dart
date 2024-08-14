import 'package:flutter/material.dart';
import 'package:online_learning_app/widgets/onboarding.dart';
import 'package:online_learning_app/widgets/skip_button.dart';

class OnboardingHome extends StatelessWidget {
  const OnboardingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        skipbutton(),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: OnBoarding(
            img: Image.asset("assets/images/free_courses.png"),
            title1: "Numerous free \n trail courses",
            title2: "free  courses for you to \n find your way to learning ",
          ),
        ),
      ],
    );
  }
}
