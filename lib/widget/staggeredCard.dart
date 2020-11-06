import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_ui/model/dummyData.dart';
import 'package:food_ui/widget/fruitsCard.dart';

class StaggeredCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: DUMMY_FRUITS.length,
          itemBuilder: (context, i) => FruitsCard(
            DUMMY_FRUITS[i].images,
          ),
          staggeredTileBuilder: (i) =>
              StaggeredTile.count(1, i.isEven ? 1.8 : 1.2),
          mainAxisSpacing: 13.0,
          crossAxisSpacing: 13.0,
        ),
      ),
    );
  }
}