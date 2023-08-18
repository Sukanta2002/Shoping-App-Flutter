import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final String titel;
  final double price;
  final String imageUrl;
  const ProductList(
      {super.key,
      required this.titel,
      required this.price,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(216, 240, 253, 1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
            Image.asset(
              imageUrl,
              height: 175,
            ),
          ],
        ),
      ),
    );
  }
}
