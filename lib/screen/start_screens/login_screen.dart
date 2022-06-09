import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/Widget/text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/start_screens/password_recovery.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Form(
            key: key,
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
                  onSaved: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the email";
                    } else {
                      return null;
                    }
                  },
                  icon: IconlyBroken.message,
                  text: 'Email or phone number',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormFild(
                    onSaved: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the password";
                      } else {
                        return null;
                      }
                    },
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
                        onTap: () {},
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
                    if (key.currentState!.validate()) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "homescreen", (route) => false);
                    }
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
                        Navigator.pushNamed(context, "signUp");
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
      ),
    );
  }
}
