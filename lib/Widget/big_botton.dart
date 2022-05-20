import 'package:flutter/material.dart';

class MyTextButon extends StatelessWidget {
  MyTextButon({
    Key? key,
    required this.color,
    required this.text,
    this.onTap,
    this.colorBorder,
    this.textColor = Colors.white,
  }) : super(key: key);
  Color color;
  Color? colorBorder;
  Color? textColor;

  String text;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          // width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: colorBorder == null
                ? null
                : Border.all(color: colorBorder!, width: 2),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor!,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              shadows: const [
                // BoxShadow(
                //   color: Colors.black26,
                //   spreadRadius: 10,
                //   blurRadius: 10,
                //   offset: Offset(0, 5),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
