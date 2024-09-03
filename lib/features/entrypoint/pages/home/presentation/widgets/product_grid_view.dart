import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: CoreDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 1/1.5
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ProductTileSquare(data: Dummy.products.first);
        },
      ),
    );
  }
}
