import 'package:flutter/material.dart';
import 'package:online_learning_app/0nboarding/onboarding_easy_learn.dart';
import 'package:online_learning_app/0nboarding/onboarding_home.dart';
import 'package:online_learning_app/screens/onboarding_study_plan.dart';
import 'package:online_learning_app/theme/const_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingHomeScreen extends StatefulWidget {
  const OnboardingHomeScreen({super.key});

  @override
  State<OnboardingHomeScreen> createState() => _OnboardingHomeScreenState();
}

class _OnboardingHomeScreenState extends State<OnboardingHomeScreen> {
  PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 80),
          decoration: BoxDecoration(
            color: navcolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(children: [
            PageView(controller: pagecontroller, children: const [
              Center(
                child: OnboardingHome(),
              ),
              OnbardingEasyLearning(),
              OnboardingStudyPlan(),
            ]),
            Container(
              alignment: const Alignment(0, 0.4),
              child: SmoothPageIndicator(controller: pagecontroller, count: 3),
            )
          ]),
        ),
      ),
    );
  }
}
