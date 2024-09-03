import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:flutter/material.dart';

class CategoryProductPage extends StatelessWidget {
  const CategoryProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables'),
        leading: const BackBtn(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: CoreDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          childAspectRatio: 1/1.5,
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ProductTileSquare(
            data: Dummy.products.first,
          );
        },
      ),
    );
  }
}
