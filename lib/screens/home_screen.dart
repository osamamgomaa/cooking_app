import '../AppAssets.dart';
import '../AppColors.dart';
import '../widgets/chips.dart';
import '../widgets/circular_btn.dart';
import '../widgets/dish_card.dart';
import '../widgets/dotted_slider.dart';
import '../widgets/guide_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    AppAssets.broccoliIcon,
    AppAssets.riceIcon,
    AppAssets.salmonIcon,
    AppAssets.onionIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 5.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedItemColor: AppColors.colorActiveSlider.withOpacity(0.3),
          selectedItemColor: AppColors.colorBlack,
          iconSize: 25.0,
          backgroundColor: AppColors.colorBackground,
          currentIndex: 0,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.homeIcon)), label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.listIcon)), label: "List"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.chefIcon)), label: "Chef"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.userIcon)),
                label: "Profile"),
          ],
        ),
      ),
      backgroundColor: AppColors.colorBackground,
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: AppColors.colorActiveSlider),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Jenny Wilson",
                        style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.colorBlack),
                      ),
                    ],
                  ),
                  CircularBtn(
                      color: AppColors.colorSecondary,
                      icon: Icon(
                        AppAssets.searchIcon,
                        size: 35.0,
                        color: AppColors.colorBlack,
                      ),
                      size: 60.0,),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            GuideCard(),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.colorBlack),
                  ),
                  DottedSlider()
                ],
              ),
            ),
            CategoryChips(
              categories: [
                "🐟  Fish",
                "🥬  Vegetables",
                "🥩  Meat",
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.colorBlack),
                  ),
                  DottedSlider()
                ],
              ),
            ),
            DishCard(),
          ],
        ),
      ),
    );
  }
}
