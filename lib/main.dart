import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning_app/screens/login_screen.dart';
import 'package:online_learning_app/screens/onboarding_home_screen.dart';
import 'package:online_learning_app/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        routes: {
          'Login': (context) => const LoginScreen(),
          'SignUp': (context) => const SignUpScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: 'OnLine Learning App',
        home: const OnboardingHomeScreen(
        
        ),
      ),
    );
  }
}

