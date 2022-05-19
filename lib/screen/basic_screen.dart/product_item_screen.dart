import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProductItemScreen extends StatelessWidget {
  const ProductItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/Food Picture.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            scroll(),
          ],
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(15),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.black12,
                      width: 35,
                      height: 5,
                    ),
                  ],
                ),
              ),
              Text(
                'Cacao Maca Walnut Milk',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Food .60 min',
                  style: Theme.of(context).textTheme.headline2),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/image 5.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('Elena Shelby',
                      style: Theme.of(context).textTheme.headline3),
                  const Spacer(),
                  const CircleAvatar(
                    child: Icon(
                      IconlyLight.heart,
                      color: Colors.white,
                    ),
                    radius: 25,
                    backgroundColor: butonColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('273 Likes',
                      style: Theme.of(context).textTheme.headline3),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              Text('Description', style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
              Text(
                  'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                  style: Theme.of(context).textTheme.headline2),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 4 * 50,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xFFE3FFF8),
                          child: Icon(Icons.done),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '4 Eggs',
                          style: Theme.of(context).textTheme.headline3,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              Text(
                'Steps',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 15),
              ListTile(
                leading: CircleAvatar(
                  radius: 13,
                  backgroundColor: textColor,
                  child: Text(
                    '1',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                title: Column(
                  children: [
                    Text(
                      'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/images/Rectangle 219.png'),
                  ],
                ),
              ),
            ],
            controller: scrollController,
          ),
        );
      },
    );
  }
}
