import 'package:checkout_payment/core/constant/app_strings.dart';
import 'package:checkout_payment/core/router/router.dart';
import 'package:flutter/material.dart';

class CheckoutPayment extends StatelessWidget {
  const CheckoutPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: kInter),
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
    );
  }
}
