import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../constans/colors.dart';

class PainCodeWidget extends StatelessWidget {
  const PainCodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        onChanged: (e) {},
        pinTheme: PinTheme.defaults(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10),
            borderWidth: 2,
            fieldHeight: 60,
            fieldWidth: 60,
            selectedColor: butonColor,
            activeColor: Colors.grey,
            inactiveColor: Colors.grey),
      ),
    );
  }
}
