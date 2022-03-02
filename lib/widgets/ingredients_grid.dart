import 'package:flutter/material.dart';

import '../AppAssets.dart';
import 'ingredient_card.dart';

class IngredientsaGrid extends StatelessWidget {
  const IngredientsaGrid({Key? key}) : super(key: key);

  static List<IngredientCard> ingredients = [
    IngredientCard(
        name: "Broccoli", weight: "80g", imagePath: AppAssets.broccoliIcon),
    IngredientCard(
        name: "Salmon", weight: "120g", imagePath: AppAssets.salmonIcon),
    IngredientCard(name: "Rice", weight: "200g", imagePath: AppAssets.riceIcon),
    IngredientCard(
        name: "Onion", weight: "60g", imagePath: AppAssets.onionIcon),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202.0,
      width: double.maxFinite,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2,
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          itemCount: ingredients.length,
          itemBuilder: (BuildContext ctx, index) {
            return ingredients[index];
          }),
    );
  }
}
