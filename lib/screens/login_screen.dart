import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning_app/screens/sign_up.dart';
import 'package:online_learning_app/theme/const_color.dart';
import 'package:online_learning_app/theme/font_style.dart';
import 'package:online_learning_app/widgets/button.dart';
import 'package:online_learning_app/widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isobscure = true;

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(
          top: 100,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff1F1F39),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                textAlign: TextAlign.start,
                'Login',
                style: fontstyle32,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff2F2F42),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 530.h,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email';
                          }
                          return null;
                        },
                        title: 'Your Email',
                        controller: emailcontroller,
                        hintText: 'Enter Email',
                        obscureText: false),
                    SizedBox(
                      height: 5.h,
                    ),
                    MyTextField(
                        suffexicon: IconButton(
                          icon: isobscure
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Color(0xffBBBBDC),
                                  size: 20,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  size: 20,
                                  color: Color(0xffBBBBDC),
                                ),
                          onPressed: () {
                            setState(() {
                              isobscure = !isobscure;
                            });
                          },
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Password';
                          }
                          return null;
                        },
                        title: ' Password',
                        controller: passwordcontroller,
                        hintText: 'Enter Password',
                        obscureText: true),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?',
                            textAlign: TextAlign.end,
                            style: fontstyle14),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    MyButton(
                        gradient: const [buttoncolor],
                        text: 'Login',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                          //print('login');
                        }),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: fontstyle12,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                            },
                            child: Text('Sign Up', style: fontstyle)),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: greycolor,
                            height: 20.h,
                            indent: 20,
                            endIndent: 20,
                          ),
                        ),
                        Text(
                          'Or Login With',
                          style: fontstyle12
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: greycolor,
                            height: 20.h,
                            indent: 20,
                            endIndent: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(width: 30.w, 'assets/images/google.png'),
                        SizedBox(
                          width: 20.w,
                        ),
                        Image.asset(
                          width: 50.w,
                          'assets/images/facebook.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
