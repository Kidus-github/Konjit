import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPadding),
          height: 50,
          width: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: product.color,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: product.color,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: product.color,
              ),
              onPressed: () {},
              child: Text(
                "Buy Now".toUpperCase(),
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
