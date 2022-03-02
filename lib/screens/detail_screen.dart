import 'package:flutter/material.dart';
import '../widgets/ingredients_grid.dart';

import '../AppAssets.dart';
import '../AppColors.dart';
import '../widgets/circular_btn.dart';
import '../widgets/rounded_btn.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Container(
        padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => {Navigator.pop(context)},
              child: CircularBtn(
                  color: AppColors.colorSecondary,
                  icon: Icon(
                    AppAssets.backIcon,
                    size: 15.0,
                    color: AppColors.colorBlack,
                  ),
                  size: 60.0,
                  ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Healthy salmon\nwith veggies",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.colorBlack),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Image.asset(
                  AppAssets.listIcon,
                  color: AppColors.colorPrimary,
                  height: 25.0,
                  width: 25.0,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Add to cooking list",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.colorPrimary),
                ),
                Spacer(),
                Text(
                  "245.23 cal",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.colorPrimary),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 25,
                        offset: Offset(-5, 10),
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage(AppAssets.dishImg),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Ingredients",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: AppColors.colorBlack),
            ),

            IngredientsaGrid(),
            SizedBox(
              height: 20.0,
            ),
            RoundedIconBtn(
              height: 60.0,
              width: double.maxFinite,
              color: AppColors.colorPrimary,
              textColor: AppColors.colorWhite,
            ),
          ],
        ),
      ),
    );
  }
}
