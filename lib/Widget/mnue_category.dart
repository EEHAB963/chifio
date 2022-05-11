import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MnueCategory extends StatelessWidget {
  MnueCategory({Key? key, required this.x}) : super(key: key);
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: MySmoleButon(
            textColor: x == 1 ? Colors.white : textColor2,
            color: x == 1 ? butonColor : form,
            text: 'All',
            onTap: () {
              Provider.of<HomeProvider>(context, listen: false).clicCategore(1);
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
              Provider.of<HomeProvider>(context, listen: false).clicCategore(2);
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
              Provider.of<HomeProvider>(context, listen: false).clicCategore(3);
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
}
