import 'package:chefio/Widget/left_and_right.dart';

import 'package:chefio/Widget/product_item_widget.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Widget/big_botton.dart';

class ProfileTap extends StatelessWidget {
  ProfileTap({Key? key, this.followBottom = false}) : super(key: key);
  bool followBottom = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.white, elevation: 0, actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.share,
              color: headLineColor,
            ),
          )
        ]),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HeroScreen(),
                              ));
                        },
                        child: const Hero(
                          tag: 'image profile',
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/image 5.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Choirul Syafril',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '32',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Recipes',
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '240',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Following',
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '662',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Recipes',
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                        ],
                      ),
                      followBottom == true
                          ? MyTextButon(color: buttonColor, text: 'Follow')
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LeftAndRight(lr: true),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: GridView.count(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    crossAxisCount: 2,

                    crossAxisSpacing: 35,
                    // mainAxisSpacing: 10,
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

class HeroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Hero(
          tag: 'image profile',
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              'assets/images/image 5.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
