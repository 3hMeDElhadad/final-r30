import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ProductTileSquare extends StatelessWidget {
  const ProductTileSquare({
    super.key,
    required this.data,
  });

  final ProductModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding / 2),
      child: Material(
        borderRadius: CoreDefaults.borderRadius,
        color: CoreThemeColor.scaffoldBackground,
        child: InkWell(
          borderRadius: CoreDefaults.borderRadius,
          onTap: () => Navigator.pushNamed(context, RoutesName.productDetails),
          child: Container(
            width: 176,
            height: 296,
            padding: const EdgeInsets.all(CoreDefaults.padding),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: CoreThemeColor.placeholder),
              borderRadius: CoreDefaults.borderRadius,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(CoreDefaults.padding / 2),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                      data.cover,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  data.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Text(
                  data.weight,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${data.price.toInt()}',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '\$${data.mainPrice}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}