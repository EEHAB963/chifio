import 'package:chefio/Widget/my_bag_boton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/start_screens/verification_code.dart';
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
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFormFild(icon: Icons.email, text: 'Email or phone number'),
              const SizedBox(height: 50),
              MyTextButon(
                color: butonColor,
                text: 'Verify',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
