import 'package:flutter/material.dart';
import 'package:shoping_app/global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: ListView.builder(
        itemCount: carts.length,
        itemBuilder: (context, index) {
          final cart = carts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cart['imageUrl'] as String),
              radius: 24,
            ),
            title: Text(
              cart['title'] as String,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text('Size: ${cart['size']}'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
