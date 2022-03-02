import 'package:flutter/material.dart';

import '../AppAssets.dart';

class RoundedIconBtn extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Color textColor;
  const RoundedIconBtn({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              AppAssets.grillIcon,
              color: textColor,
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              "Start Cooking",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: textColor),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
