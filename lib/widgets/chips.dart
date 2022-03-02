import '../AppColors.dart';
import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  final List<String> categories;
  CategoryChips({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> chips = [];
    for (int i = 0; i < categories.length; i++) {
      Widget item = Chip(
        label: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text(categories[i]),
            )),
        labelStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: AppColors.colorBlack),
        backgroundColor: AppColors.colorSecondary,
      );
      chips.add(item);
    }
    return Container(
      height: 50.0,
      padding: EdgeInsets.only(left: 32.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Wrap(
            spacing: 12.0,
            direction: Axis.horizontal,
            children: chips,
          ),
        ),
      ),
    );
  }
}
