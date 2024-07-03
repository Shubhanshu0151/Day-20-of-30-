// import 'package:day_20/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Catalog App ".text.xl5.bold.color(context.theme.canvasColor).make(),
        "Tranding Products".text.xl2.make(),
      ],
    );
  }
}
