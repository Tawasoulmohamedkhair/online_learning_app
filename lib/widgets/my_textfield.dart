import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning_app/theme/font_style.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final String? Function(String?)? validator;
  final Widget? suffexicon;

  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.validator,
      this.suffexicon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.start,
                  title,
                  style: fontstyle14),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                
                validator: validator,
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  
                  filled: true,
                  fillColor: const Color(0xff3E3E55),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  hintText: hintText,
                  suffixIcon: suffexicon,
                  hintStyle: const TextStyle(
                    color: Color(0xff858597),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
