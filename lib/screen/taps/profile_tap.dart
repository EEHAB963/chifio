import 'package:chefio/Widget/left_and_right.dart';
import 'package:chefio/Widget/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileTap extends StatelessWidget {
  const ProfileTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: const [Icon(Icons.share)]),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/image 5.png'),
                      ),
                      Text(
                        'Choirul Syafril',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '32',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Recipes',
                                  style: Theme.of(context).textTheme.headline2)
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '240',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Following',
                                  style: Theme.of(context).textTheme.headline2)
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '662',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Recipes',
                                  style: Theme.of(context).textTheme.headline2)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LeftAndRight(lr: true),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.6,
                    children: List.generate(
                      5,
                      (index) => ProductItemWidget(
                        viweUiser: false,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
