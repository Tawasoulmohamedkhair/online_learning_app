import 'package:flutter/material.dart';

Widget dotPageView() {
  return Builder(builder: (context) {
    int pagenumber = 0;

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      for (int i = 1; i < 3; i++)
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: i == pagenumber + 1 ? 20 : 6,
          height: 6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
        )
    ]);
  });
}
