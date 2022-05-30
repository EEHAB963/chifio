import 'package:flutter/material.dart';

import '../constans/colors.dart';

class CustomTextFormFild extends StatelessWidget {
  CustomTextFormFild({Key? key, this.icon, this.text, this.suffixIcon,this.readOnly=false,this.ontap})
      : super(key: key);
  String? text;
  IconData? icon;
  IconData? suffixIcon;
  bool readOnly ;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: TextFormField( 
        onTap:ontap ,
        readOnly: readOnly,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: textColor2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: buttonColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: Colors.red),
          ),
          hintText: text,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          suffixIcon: Icon(
            suffixIcon,
            color: textColor2,
          ),
          prefixIcon: Icon(
            icon,
            color: textColor2,
          ),
        ),
      ),
    );
  }
}
