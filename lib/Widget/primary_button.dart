import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.colorText,
    required this.onTap,
    this.width = 156,
    this.hight = 56,
    this.fontSize = 17,
  }) : super(key: key);
  String text;
  Color buttonColor;
  Color colorText;
  VoidCallback onTap;
  double width;
  double hight;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: hight,
        child: Text(
          text,
          style: TextStyle(
              color: colorText,
              fontSize: fontSize,
              fontWeight: FontWeight.w700),
        ),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }
}
