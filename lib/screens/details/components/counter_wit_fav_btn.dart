import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xffff6464),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
