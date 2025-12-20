import 'package:checkout_payment/core/extension/extenison.dart';
import 'package:flutter/material.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: context.kTextTheme.titleMedium,
        ),
        Text(
          value,
          style: context.kTextTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
