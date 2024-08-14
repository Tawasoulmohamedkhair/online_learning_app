import 'package:flutter/material.dart';
import 'package:online_learning_app/theme/const_color.dart';

Widget skipbutton() {
  return MaterialButton(
    onPressed: () {},
    child: const Text(
      "SKIP",
      style: TextStyle(color: skipbuttoncolor, fontSize: 20),
    ),
  );
}
