// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_first_app/models/catalogModel.dart';

import 'HomePage/catalogButtonBar.dart';
import 'HomePage/catalogImage.dart';
import 'HomePage/catalogTextBox.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(item.id.toString()),
            child: CatalogImage(
              image: item.imageUrl,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CatalogTextBox(
                  name: item.name,
                  desc: item.desc,
                ),
                CatalogButtonBar(
                  price: item.price.toString(),
                  item: item,
                ),
              ],
            ),
          )
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
