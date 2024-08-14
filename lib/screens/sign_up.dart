import 'package:flutter/material.dart';
import 'package:online_learning_app/screens/login_screen.dart';
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
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff1F1F39),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    'Enter your details below & free sign up',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffBBBBCD)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff2F2F42),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 750,
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
                        title: 'Your PassWord',
                        controller: passwordcontroller,
                        hintText: 'Enter Password',
                        obscureText: true),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                        text: 'Create Account',
                        gradient: const [Color(0xff3D5CFF)],
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
                        const Text(
                          'By creating  an account you have to agree \n with our them & conditions',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffBBBBDC),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already  have an account?',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffBBBBDC)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                            },
                            child: const Text('Log in',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3D5CFF),
                                ))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
