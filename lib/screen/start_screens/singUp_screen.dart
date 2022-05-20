import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/Widget/text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/start_screens/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                'Welcome ! ',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(letterSpacing: .7),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Please enter your account here',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormFild(
                icon: IconlyBroken.message,
                text: 'Email or phone number',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormFild(
                  icon: IconlyBroken.lock,
                  text: 'Password',
                  suffixIcon: IconlyLight.hide),
              const SizedBox(
                height: 20,
              ),
              const Text('Your Password must contain:'),
              ListTile(
                leading: const Icon(Icons.done),
                title: Text(
                  'Atleast 6 characters',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.done),
                title: Text(
                  'Contains a number',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyTextButon(
                color: buttonColor,
                text: 'Sing UP',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationCode(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
