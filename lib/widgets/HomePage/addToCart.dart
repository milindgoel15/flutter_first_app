import 'package:flutter/material.dart';
import 'package:flutter_first_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_first_app/models/cartModel.dart';
import 'package:flutter_first_app/models/catalogModel.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveItem]);
    final CartModel _cart = (VxState.store as AppStore).cart;

    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
      ),
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);

          // setState(() {});
        }
      },
      child: isInCart
          ? const Icon(Icons.done)
          : const Icon(Icons.add_shopping_cart_outlined),
    );
  }
}
