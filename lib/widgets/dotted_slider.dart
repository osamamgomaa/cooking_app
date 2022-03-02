import '../AppColors.dart';
import 'package:flutter/material.dart';

class DottedSlider extends StatelessWidget {
  const DottedSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 7.0,
            width: 7.0,
            decoration: BoxDecoration(
              color: AppColors.colorActiveSlider.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              color: AppColors.colorActiveSlider,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 7.0,
            width: 7.0,
            decoration: BoxDecoration(
              color: AppColors.colorActiveSlider.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
