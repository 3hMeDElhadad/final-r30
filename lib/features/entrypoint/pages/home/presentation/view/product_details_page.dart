import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/buy_now_row_button.dart';
import 'package:commerce/core/widgets/price_and_quantity_row.dart';
import 'package:commerce/core/widgets/product_images_slider.dart';
import 'package:commerce/core/widgets/review_row_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Product Details'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
          child: BuyNowRow(
            onBuyButtonTap: () {},
            onCartButtonTap: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImagesSlider(
              images: [
                'assets/images/dummy/product-details.png',
                'assets/images/dummy/product-details.png',
                'assets/images/dummy/product-details.png',
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(CoreDefaults.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cauliflower Bangladeshi',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    const Text('Weight: 5Kg'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
              child: PriceAndQuantityRow(
                currentPrice: 20,
                orginalPrice: 30,
                quantity: 2,
              ),
            ),
            const SizedBox(height: 8),

            /// Product Details
            Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Duis aute veniam veniam qui aliquip irure duis sint magna occaecat dolore nisi culpa do. Est nisi incididunt aliquip  commodo aliqua tempor.',
                  ),
                ],
              ),
            ),

            /// Review Row
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: CoreDefaults.padding,
                // vertical: CoreDefaults.padding,
              ),
              child: Column(
                children: [
                  Divider(thickness: 0.1),
                  ReviewRowButton(totalStars: 5),
                  Divider(thickness: 0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
