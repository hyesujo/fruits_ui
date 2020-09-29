import 'package:flutter/material.dart';
import 'package:food_ui/screen/foodDetailScreen.dart';

class FruitsCard extends StatelessWidget {
  final AssetImage images;

  FruitsCard(
      this.images,
      );

  void selectCard(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_) => FoodDetailScreen(),
    ),
    );
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCard(context),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: images, fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
