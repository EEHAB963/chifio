import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/taps/profile_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProductItemWidget extends StatelessWidget {
  ProductItemWidget({Key? key, this.viweUiser = true}) : super(key: key);
  bool viweUiser;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 155,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileTap(followBottom: true),
                ),
              );
            },
            child: Row(
              children: viweUiser == true
                  ? [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/image 4.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Calum Lewis',
                          style: Theme.of(context).textTheme.headline3),
                    ]
                  : [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  //clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/images/image 11.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: favorateColor.withAlpha(200).withOpacity(.15)),
                      child: const Icon(
                        IconlyLight.heart,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          Text(
            'Sald',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Food . > 60 m',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: textColor2),
          ),
        ],
      ),
    );
  }
}
