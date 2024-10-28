import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristrocratic Hand Bag",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Hero(
                tag: '${product.id}',
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fitWidth,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
