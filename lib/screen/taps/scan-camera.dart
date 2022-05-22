import 'package:chefio/Widget/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../constans/colors.dart';

class ScanCamera extends StatelessWidget {
  ScanCamera({Key? key}) : super(key: key);
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 300,
          centerTitle: true,
          leading: Column(children: [
            Icon(
              IconlyBroken.arrow_left,
              color: headLineColor,
            ),
          ]),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Food",
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                'assets/images/image 3.png',
                fit: BoxFit.fill,
                height: 200,
                width: 200,
              ),
              Text(
                "Pancakes",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          )),
      body: SafeArea(
        child: Expanded(
          child: Container(
            // padding: const EdgeInsets.only(left: 10, right: 10),
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 23),
              crossAxisCount: 2,

              //mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.6,
              children: List.generate(
                5,
                (index) => ProductItemWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
