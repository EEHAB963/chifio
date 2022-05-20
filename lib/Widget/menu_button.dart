import 'package:flutter/material.dart';

class menuButton extends StatelessWidget {
  menuButton({
    Key? key,
    required this.color,
    this.colorBorder,
    this.textColor,
    required this.text,
    this.onTap,
    this.width = 20,
  }) : super(key: key);
  Function()? onTap;
  Color color;
  Color? colorBorder;
  Color? textColor;
  String text;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: width,
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
