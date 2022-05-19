
import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key,
      required this.text,
      required this.buttonColor,
      required this.colorText,
      required this.onTap})
      : super(key: key);
  String text;
  Color buttonColor;
  Color colorText;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 156,
        height: 56,
        child: Text(
          text,
          style: TextStyle(
              color: colorText, fontSize: 17, fontWeight: FontWeight.w700),
        ),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }
}
