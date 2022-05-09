import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeTap extends StatelessWidget {
  HomeTap({Key? key}) : super(key: key);
  int x = 1;
  int lr = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 3,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  MyTextFormFild(
                    icon: IconlyBroken.search,
                    text: 'Search',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Category',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  mnueCategory(1),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: size.height - 10 - size.height / 3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  laftAndRaet(context, lr),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  mnueCategory(int x) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: MySmoleButon(
            textColor: x == 1 ? Colors.white : textColor2,
            color: x == 1 ? butonColor : form,
            text: 'All',
            onTap: () {
              //  setState(() {
              //      x = 1;
              //    });
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: MySmoleButon(
            textColor: x == 2 ? Colors.white : textColor2,
            color: x == 2 ? butonColor : form,
            text: 'Food',
            onTap: () {
              //  setState(() {
              //    x = 2;
              //  });
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: MySmoleButon(
            textColor: x == 3 ? Colors.white : textColor2,
            color: x == 3 ? butonColor : form,
            text: 'Drink',
            onTap: () {
              //  setState(() {
              //    x = 3;
              //  });
            },
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }

  laftAndRaet(BuildContext context, int lr) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'left',
                  style: lr == 2
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
                Container(
                  height: 3,
                  color: lr == 2 ? butonColor : textColor2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Raet',
                  style: lr == 1
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
                Container(
                  height: 3,
                  color: lr == 1 ? butonColor : textColor2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
