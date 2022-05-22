import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/Widget/text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/basic_screen.dart/home_screen.dart';
import 'package:chefio/screen/start_screens/password_recovery.dart';
import 'package:chefio/screen/start_screens/singUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.headline1,
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: const Text(
                        'Forgot password? ',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PasswordRecovery(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              MyTextButon(
                color: buttonColor,
                text: 'Login',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Or continue with',
                  style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(
                height: 20,
              ),
              MyTextButon(color: buttonColorRed, text: 'G googel'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have any account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SingUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: buttonColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
