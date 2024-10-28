import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

import './components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            // SvgPicture.asset(
            //   "assets/icons/Search.svg",
            //   color: Colors.white,
            // ),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
