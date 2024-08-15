import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning_app/screens/login_screen.dart';
import 'package:online_learning_app/theme/const_color.dart';
import 'package:online_learning_app/theme/font_style.dart';
import 'package:online_learning_app/widgets/button.dart';
import 'package:online_learning_app/widgets/my_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isobscure = true;

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 100),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff1F1F39),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: fontstyle32,
                    ),
                    Text('Enter your details below & free sign up',
                        style: fontstyle12),
                  ],
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff2F2F42),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                height: 520.h,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      MyTextField(
                          title: 'Your Email',
                          controller: emailcontroller,
                          hintText: 'Enter Email',
                          obscureText: false),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                          suffexicon: IconButton(
                            icon: isobscure
                                ? const Icon(
                                    Icons.visibility,
                                    color: Color(0xffBBBBDC),
                                    size: 20,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    size: 20,
                                    color: Color(0xffBBBBDC),
                                  ),
                            onPressed: () {
                              setState(() {
                                isobscure = !isobscure;
                              });
                            },
                          ),
                          title: ' Password',
                          controller: passwordcontroller,
                          hintText: 'Enter Password',
                          obscureText: true),
                      const SizedBox(
                        height: 20,
                      ),
                      MyButton(
                          text: 'Create Account',
                          gradient: const [buttoncolor],
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                            // print('create');
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Theme(
                            data: ThemeData(
                                primarySwatch: Colors.blue,
                                unselectedWidgetColor: Colors.blue),
                            child: Checkbox(
                                value: false,
                                onChanged: (value) {
                                  value = false;
                                }),
                          ),
                          Text(
                              'By creating  an account you have to agree \n with our them & conditions',
                              style: fontstyle12),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already  have an account?', style: fontstyle12),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                              },
                              child: Text('Log in', style: fontstyle)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
