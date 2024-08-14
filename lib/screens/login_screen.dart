import 'package:flutter/material.dart';
import 'package:online_learning_app/screens/sign_up.dart';
import 'package:online_learning_app/theme/const_color.dart';
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
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(
          top: 100,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff1F1F39),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                textAlign: TextAlign.start,
                'Login',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff2F2F42),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 750,
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
                    const SizedBox(
                      height: 20,
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
                        title: 'Your PassWord',
                        controller: passwordcontroller,
                        hintText: 'Enter Password',
                        obscureText: true),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Color(0xffBBBBDC))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                        gradient: const [buttoncolor],
                        text: 'Login',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                          //print('login');
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Color(0xffBBBBDC)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                            },
                            child: const Text('Sign Up',
                                style: TextStyle(
                                  color: Colors.blue,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: greycolor,
                            height: 20,
                            indent: 20,
                            endIndent: 20,
                          ),
                        ),
                        Text(
                          'Or Login With',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffBBBBDC)),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: greycolor,
                            height: 20,
                            indent: 20,
                            endIndent: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(width: 30, 'assets/images/google.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          width: 50,
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
