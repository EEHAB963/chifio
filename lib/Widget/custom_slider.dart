import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constans/colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

double Slide = 30;

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Cooking Duration  ",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            Text(
              "( in minutes )",
              style: TextStyle(fontSize: 15, color: textColor2),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "< 10",
                  style:
                      TextStyle(color: butonColor, fontWeight: FontWeight.bold),
                ),
                Text("30",
                    style: TextStyle(
                        color: butonColor, fontWeight: FontWeight.bold)),
                Text("> 60",
                    style: TextStyle(
                        color: butonColor, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Slider(
              divisions: 2,
              activeColor: Colors.green,
              thumbColor: Colors.green,
              value: Slide,
              max: 60,
              min: 10,
              onChanged: (value) {
                setState(() {
                  Slide = value;
                  print(value);
                });
              }),
        ]),
      ],
    );
  }
}
