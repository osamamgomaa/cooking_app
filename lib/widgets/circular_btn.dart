import 'package:flutter/material.dart';

class CircularBtn extends StatelessWidget {
  final double size;
  final Icon icon;
  final Color color;
  const CircularBtn({
    Key? key,
    required this.size,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: Center(child: icon),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
