import 'package:checkout_payment/core/router/router.dart';
import 'package:flutter/material.dart';

class CheckoutPayment extends StatelessWidget {
  const CheckoutPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router.config());
  }
}
