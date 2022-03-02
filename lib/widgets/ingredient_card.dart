import 'package:flutter/material.dart';

import '../AppColors.dart';

class IngredientCard extends StatelessWidget {
  final String name;
  final String weight;
  final String imagePath;

  const IngredientCard(
      {Key? key,
      required this.name,
      required this.weight,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 160.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.colorSecondary),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColors.colorWhite),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imagePath),
                )),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.colorBlack),
                ),
                Text(
                  weight,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorBlack.withOpacity(0.6)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
