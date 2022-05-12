import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.ontap,
    required this.colorText,
    this.width = 156,
  }) : super(key: key);
  String text;
  Color buttonColor;
  Color colorText;
  VoidCallback ontap;
  double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: width,
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
