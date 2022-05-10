import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/Widget/product_item_widget.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class HomeTap extends StatelessWidget {
  HomeTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
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
                      mnueCategory(
                        provider.manuCategore,
                        context,
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
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: size.height - 10 - size.height / 3,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      laftAndRaet(context, provider.leftAndRaet),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1 / 1.6,
                            children: List.generate(
                              5,
                              (index) => ProductItemWidget(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  mnueCategory(
    int x,
    BuildContext context,
  ) {
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
              print(Provider.of<HomeProvider>(context, listen: false)
                  .manuCategore);
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
              print(Provider.of<HomeProvider>(context, listen: false)
                  .manuCategore);
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
              print(Provider.of<HomeProvider>(context, listen: false)
                  .manuCategore);
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

  laftAndRaet(BuildContext context, bool lr) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Provider.of<HomeProvider>(context, listen: false).lr();
                print(Provider.of<HomeProvider>(context, listen: false)
                    .leftAndRaet);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'left',
                    style: lr == false
                        ? Theme.of(context).textTheme.headline1
                        : Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    height: 3,
                    color: lr == false ? butonColor : textColor2,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Provider.of<HomeProvider>(context, listen: false).lr();
                print(Provider.of<HomeProvider>(context, listen: false)
                    .leftAndRaet);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Raet',
                    style: lr == true
                        ? Theme.of(context).textTheme.headline1
                        : Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    height: 3,
                    color: lr == true ? butonColor : textColor2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
