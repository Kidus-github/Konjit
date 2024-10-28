import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.size,
    required this.price,
    required this.image,
    required this.title,
    required this.description,
    required this.color,
  });

  // Static method to retrieve dummy text for products
  static String dummyText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada consequat metus eu viverra. Nullam nec fermentum neque. Aliquam vehicula leo sit amet enim blandit, a rutrum nibh malesuada. Duis luctus diam lacus, scelerisque dignissim magna imperdiet vel.";
}

// Product list outside the class definition to avoid scoping issues
List<Product> productList = [
  Product(
    id: 1,
    size: 12,
    price: 234,
    image: 'assets/images/bag_1.png',
    title: 'Office Code',
    description: Product.dummyText,
    color: const Color(0xff3d82ae),
  ),
  Product(
    id: 2,
    size: 8,
    price: 234,
    image: 'assets/images/bag_2.png',
    title: 'Belt Bag',
    description: Product.dummyText,
    color: const Color(0xffd3a984),
  ),
  Product(
    id: 3,
    size: 10,
    price: 234,
    image: 'assets/images/bag_3.png',
    title: 'Hang Top',
    description: Product.dummyText,
    color: const Color(0xff989493),
  ),
  Product(
    id: 4,
    size: 11,
    price: 234,
    image: 'assets/images/bag_4.png',
    title: 'Old Fashion',
    description: Product.dummyText,
    color: const Color(0xffe6b398),
  ),
  Product(
    id: 5,
    size: 12,
    price: 234,
    image: 'assets/images/bag_5.png',
    title: 'Office Code',
    description: Product.dummyText,
    color: const Color(0xfffb7883),
  ),
  Product(
    id: 6,
    size: 12,
    price: 234,
    image: "assets/images/bag_6.png",
    title: 'Office Code',
    description: Product.dummyText,
    color: const Color(0xffaeaeae),
  ),
];

// Getter for the product list
List<Product> getProducts() => productList;

// Setter to add new products
void addProduct(Product product) {
  productList.add(product);
}
