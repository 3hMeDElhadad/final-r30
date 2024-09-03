import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/dotted_divider.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/item_row.dart';
import 'package:flutter/material.dart';

class ItemTotalsAndPrice extends StatelessWidget {
  const ItemTotalsAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(CoreDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Total Item',
            value: '6',
          ),
          ItemRow(
            title: 'Weight',
            value: '33 Kg',
          ),
          ItemRow(
            title: 'Price',
            value: '\$ 82.25',
          ),
          ItemRow(
            title: 'Price',
            value: '\$ 12.25',
          ),
          DottedDivider(),
          ItemRow(
            title: 'Total Price',
            value: '\$ 70.25',
          ),
        ],
      ),
    );
  }
}
