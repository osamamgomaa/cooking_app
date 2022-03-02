import 'package:cooking_app/AppAssets.dart';
import 'package:cooking_app/AppColors.dart';
import 'package:flutter/material.dart';

class GuideCard extends StatelessWidget {
  const GuideCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 240,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage(AppAssets.guideImg),
                    fit: BoxFit.fitWidth)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 240,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppColors.colorBlack.withOpacity(0.1)),
          ),
        ),
        Positioned(
          bottom: 30.0,
          left: 30.0,
          child: Text(
            "Beginer guide for\nbetter cooking",
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: AppColors.colorWhite),
          ),
        ),
        Positioned(
          bottom: 30.0,
          right: 30.0,
          child: Container(
            height: 70.0,
            width: 70.0,
            child: Icon(
              AppAssets.nextIcon,
              size: 22.0,
              color: AppColors.colorWhite,
            ),
            decoration: BoxDecoration(
              color: AppColors.colorCard.withOpacity(0.9),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        )
      ],
    );
  }
}
