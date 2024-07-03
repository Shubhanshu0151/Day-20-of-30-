// import 'package:day_20/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:day_20/models/catlog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: ["\$${catalog.price}".text.bold.xl.make(), _AddToCart()],
        ).pOnly(right: 0.0),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h24(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "The iPad Pro 2020 (12.9 inch) is a powerful tablet with a fast A12Z Bionic chip, 12.9-inch 120Hz display, improved cursor control, Magic Keyboard with trackpad support, and long battery life, starting at  999 for 128GB of storage."
                        .text
                        .textStyle(context.captionStyle)
                        .xl
                        .make()
                        .p12(),
                  ],
                ).py32(),
              ),
            ))
          ],
        ).p16(),
      ),
    );
  }
}

class _AddToCart extends StatefulWidget {
  _AddToCart({
    super.key,
  });

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.accentColor)),
        child: isAdded ? Icon(Icons.done) : "Add To Cart".text.make());
  }
}
