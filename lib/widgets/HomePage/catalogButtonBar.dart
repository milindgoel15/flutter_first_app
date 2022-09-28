// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/HomePage/addToCart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_first_app/models/catalogModel.dart';

class CatalogButtonBar extends StatelessWidget {
  const CatalogButtonBar({
    Key? key,
    required this.item,
    required this.price,
  }) : super(key: key);

  final Item item;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      buttonPadding: Vx.mH8,
      children: [
        "\$$price".text.bold.color(context.accentColor).lg.make(),
        AddToCart(
          catalog: item,
        ),
      ],
    ).pOnly(right: 12);
  }
}
