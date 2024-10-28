import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final Function()? onPress;
  const ColorDot(
      {super.key,
      required this.color,
      required this.isSelected,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(2.5),
        margin: const EdgeInsets.only(
            top: kDefaultPadding / 4, right: kDefaultPadding / 2),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
