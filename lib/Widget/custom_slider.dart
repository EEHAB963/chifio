import 'package:flutter/material.dart';

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
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "( in minutes )",
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "< 10",
                  style: TextStyle(
                      color: buttonColor, fontWeight: FontWeight.bold),
                ),
                Text("30",
                    style: TextStyle(
                        color: buttonColor, fontWeight: FontWeight.bold)),
                Text("> 60",
                    style: TextStyle(
                        color: buttonColor, fontWeight: FontWeight.bold)),
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
