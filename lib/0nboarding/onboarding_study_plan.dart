import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning_app/screens/login_screen.dart';
import 'package:online_learning_app/screens/sign_up.dart';
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
          // ignore: sized_box_for_whitespace
          Container(
            width: 170.w,
            child: MyButton(
                gradient: const [buttoncolor],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                text: 'Sign Up'),
          ),
          SizedBox(
            height: 40.h,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: 170.w,
            child: MyButton(
                gradient: const [greycolor],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                text: 'Log in'),
          ),
        ],
      ),
    ]);
  }
} 
