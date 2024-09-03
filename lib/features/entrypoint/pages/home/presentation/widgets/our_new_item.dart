import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:commerce/core/widgets/tile_and_action_button.dart';
import 'package:flutter/material.dart';

class OurNewItem extends StatelessWidget {
  const OurNewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Our New Item',
          onTap: () => Navigator.pushNamed(context, RoutesName.newItems),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: CoreDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              Dummy.products.length,
              (index) => ProductTileSquare(data: Dummy.products[index]),
            ),
          ),
        ),
      ],
    );
  }
}
