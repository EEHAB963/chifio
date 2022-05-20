import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/Widget/pin_code_widget.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/basic_screen.dart/home_screen.dart';
import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  VerificationCode({Key? key}) : super(key: key);

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
                'Check your email',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'We.ve sent the code to your email',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 20,
              ),
              const PinCodeWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'code expires in: ',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    '1:50',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: buttonColorRed),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              MyTextButon(
                color: buttonColor,
                text: 'Verify',
                onTap: () {
                  Navigator.pushReplacement(
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
              MyTextButon(
                color: Colors.white24,
                text: 'Send again',
                textColor: textColor2,
                colorBorder: textColor2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
