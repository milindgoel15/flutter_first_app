// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/HomePage/addToCart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_first_app/models/catalogModel.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      body: Column(
        children: [
          Hero(
            tag: Key(item.id.toString()),
            child: Image.network(item.imageUrl),
          ).h40(context),
          Expanded(
            child: VxArc(
              height: 22,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    item.name.text.color(context.accentColor).bold.xl4.make(),
                    item.desc.text.color(context.accentColor).lg.make(),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                        .text
                        .color(context.accentColor)
                        .center
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH4,
        children: [
          "\$${item.price}".text.color(context.accentColor).bold.xl3.make(),
          AddToCart(
            catalog: item,
          ).wh(100, 50)
        ],
      ).p32(),
    );
  }
}
