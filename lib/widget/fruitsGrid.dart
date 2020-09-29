import 'package:flutter/material.dart';
import 'package:food_ui/model/dummyData.dart';
import 'package:food_ui/widget/fruitsCard.dart';

class FruitsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: DUMMY_FRUITS.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        childAspectRatio: 1.0,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, i) =>
          FruitsCard(
              DUMMY_FRUITS[i].images
          ),
    );
  }
}