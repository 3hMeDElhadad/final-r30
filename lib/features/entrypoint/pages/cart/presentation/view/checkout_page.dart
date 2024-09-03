import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_address_selector.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_card_details.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_payment_systems.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Checkout'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AddressSelector(),
            PaymentSystem(),
            CardDetails(),
            PayNowButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class PayNowButton extends StatelessWidget {
  const PayNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(CoreDefaults.padding),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.orderSuccessfull);
          },
          child: const Text('Pay Now'),
        ),
      ),
    );
  }
}
