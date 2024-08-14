import 'package:flutter/material.dart';
import 'package:online_learning_app/theme/const_color.dart';
import 'package:online_learning_app/widgets/button.dart';
import 'package:online_learning_app/widgets/onboarding.dart';

class OnboardingStudyPlan extends StatelessWidget {
  const OnboardingStudyPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      OnBoarding(
        img: Image.asset("assets/images/study_plan.png"),
        title1: "Create your own \n study plan ",
        title2:
            "Study according to the \n study plan make study \n  more motivited ",
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            child: MyButton(
                gradient: const [buttoncolor], onTap: () {}, text: 'Sign Up'),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 200,
            child: MyButton(
                gradient: const [greycolor], onTap: () {}, text: 'Log in'),
          ),
        ],
      ),
    ]);
  }
}
