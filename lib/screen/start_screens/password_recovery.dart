import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/Widget/text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                'Password recovery',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Enter your email to recover your password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormFild(
                  icon: Icons.email, text: 'Email or phone number'),
              const SizedBox(height: 50),
              MyTextButon(
                color: buttonColor,
                text: 'Verify',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
