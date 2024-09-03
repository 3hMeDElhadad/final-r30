import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleCartItemTile extends StatelessWidget {
  const SingleCartItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CoreDefaults.padding,
        vertical: CoreDefaults.padding / 2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              /// Thumbnail
              SizedBox(
                width: 70,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    'assets/images/cart/cart-item.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 16),

              /// Quantity and Name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sulphurfree Bura',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.black),
                        ),
                        Text(
                          '570 Ml',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(CoreIcons.addQuantity),
                        constraints: const BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '1',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(CoreIcons.removeQuantity),
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),

              /// Price and Delete labelLarge
              Column(
                children: [
                  IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: SvgPicture.asset(CoreIcons.delete),
                  ),
                  const SizedBox(height: 16),
                  const Text('\$20'),
                ],
              )
            ],
          ),
          const Divider(thickness: 0.1),
        ],
      ),
    );
  }
}
