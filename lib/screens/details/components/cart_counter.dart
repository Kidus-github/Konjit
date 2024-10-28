import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int count = 1;
  void countOperation(String opp) {
    setState(() {
      switch (opp) {
        case '+':
          count++;
          break;
        case '-':
          if (count > 1) count--;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              countOperation('+');
            },
            icon: const Icon(Icons.add)),
        Text(
          count.toString().padLeft(2, '0'),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        IconButton(
            onPressed: () {
              countOperation('-');
            },
            icon: const Icon(Icons.remove))
      ],
    );
  }
}
