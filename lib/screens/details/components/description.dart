import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.description,
      style: const TextStyle(
        height: 1.5,
      ),
    );
  }
}
