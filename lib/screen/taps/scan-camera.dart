import 'package:flutter/material.dart';

class ScanCamera extends StatelessWidget {
  const ScanCamera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: Image.asset('assets/images/image 3.png'),
              expandedHeight: 250,
              backgroundColor: Colors.red,
              pinned: true,
            ),
            SliverFillRemaining(
              child: Text('dfjdhfjhdf'),
            ),
          ],
        ),
      ),
    );
  }
}
