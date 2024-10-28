import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Color'),
                Row(
                  children: [
                    ColorDot(
                      color: const Color(0xff356c95),
                      isSelected: true,
                      onPress: () => {},
                    ),
                    ColorDot(
                      color: const Color(0xfff8c078),
                      isSelected: false,
                      onPress: () => {},
                    ),
                    ColorDot(
                      color: const Color(0xffa2989b),
                      isSelected: false,
                      onPress: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: kTextColor),
                    children: [
                  const TextSpan(text: "Size\n"),
                  TextSpan(
                      text: "${product.size} cm",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold))
                ])),
          )
        ],
      ),
    );
  }
}
