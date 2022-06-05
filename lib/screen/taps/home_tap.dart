import 'package:chefio/Widget/menu_category.dart';
import 'package:chefio/Widget/menu_button.dart';
import 'package:chefio/Widget/text_form_fild.dart';
import 'package:chefio/Widget/product_item_widget.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../../Widget/left_and_right.dart';

class HomeTap extends StatelessWidget {
  HomeTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Column(
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
                    CustomTextFormFild(
                      ontap: () {},
                      readOnly: true,
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
                    MenuCategory(
                      x: provider.manuCategore,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      LeftAndRight(lr: provider.leftAndRaet),
                      Expanded(
                        child: GridView.count(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.6,
                          children: List.generate(
                            5,
                            (index) => ProductItemWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
