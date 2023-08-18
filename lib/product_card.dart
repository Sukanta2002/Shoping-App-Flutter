import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final String titel;
  final double price;
  final String imageUrl;
  final Color backgroundColour;
  const ProductList(
      {super.key,
      required this.titel,
      required this.price,
      required this.imageUrl,
      required this.backgroundColour});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColour,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titel,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              imageUrl,
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
