import 'package:flutter/material.dart';
import 'package:online_learning_app/theme/const_color.dart';

// ignore: must_be_immutable
class MyButton extends StatefulWidget {
  final Function()? onTap;
  List<Color> gradient = const [buttoncolor, greycolor];
  final String text;
  MyButton({
    super.key,
    this.onTap,
    required this.gradient,
    required this.text,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        padding:
            const EdgeInsets.only(right: 25, left: 25, top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: widget.gradient[0],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          widget.text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        )),
      ),
    );
  }
}
