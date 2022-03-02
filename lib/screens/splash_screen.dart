import 'package:cooking_app/AppAssets.dart';
import 'package:cooking_app/AppColors.dart';
import 'package:cooking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return RadialGradient(
                    colors: <Color>[
                      Colors.black.withOpacity(1.0),
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                    stops: [0.80, 0.90, 1.0],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  AppAssets.splashImg,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 60.0),
              child: Text(
                "Cooking at\nyour own\nway with us..",
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.colorBlack),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: AppColors.colorActiveSlider.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        Container(
                          height: 20.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                            color: AppColors.colorActiveSlider,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        Container(
                          height: 10.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: AppColors.colorActiveSlider.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                    child: Container(
                      height: 90.0,
                      width: 90.0,
                      child: Icon(
                        AppAssets.nextIcon,
                        size: 22.0,
                        color: AppColors.colorWhite,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.colorPrimary,
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
