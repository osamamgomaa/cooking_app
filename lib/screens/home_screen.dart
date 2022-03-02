import 'package:cooking_app/AppAssets.dart';
import 'package:cooking_app/AppColors.dart';
import 'package:cooking_app/screens/detail_screen.dart';
import 'package:cooking_app/widgets/chips.dart';
import 'package:cooking_app/widgets/dotted_slider.dart';
import 'package:cooking_app/widgets/guide_card.dart';
import 'package:cooking_app/widgets/ingredients.dart';
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
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.homeIcon)), label: "Home"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.listIcon)), label: "List"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.chefIcon)), label: "Chef"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.userIcon)), label: "Profile"),
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
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: Icon(
                      AppAssets.searchIcon,
                      size: 35.0,
                      color: AppColors.colorBlack,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.colorSecondary,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
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
                "🥬  Vegetables",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 220,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.colorCard),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Healthy salmon\nwith veggies",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.colorBlack),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "245.23 cal",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.colorPrimary),
                              ),
                            ],
                          ),
                          Container(
                            height: 100.0,
                            width: 100.0,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Ingredients",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: AppColors.colorActiveSlider),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Ingredients(),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()),
                            ),
                            child: Container(
                              height: 50.0,
                              width: 180.0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      AppAssets.grillIcon,
                                      color: AppColors.colorPrimary,
                                    ),
                                    Text(
                                      "Start Cooking",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.colorPrimary),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color:
                                    AppColors.colorActiveSlider.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
