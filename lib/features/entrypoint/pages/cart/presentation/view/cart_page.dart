import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/coupon_code_field.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/items_totals_price.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/single_cart_item_tile.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final bool isHomePage;
  const CartPage({super.key, this.isHomePage = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isHomePage
          ? null
          : AppBar(
              leading: const BackBtn(),
              title: const Text('Cart Page'),
            ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SingleCartItemTile(),
              const SingleCartItemTile(),
              const SingleCartItemTile(),
              const CouponCodeField(),
              const ItemTotalsAndPrice(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(CoreDefaults.padding),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
                      Navigator.pushNamed(context, RoutesName.checkoutPage);
                    },
                    child: const Text('Checkout'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}