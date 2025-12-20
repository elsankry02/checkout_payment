import 'package:checkout_payment/core/extension/extenison.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: context.kTextTheme.headlineSmall,
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: context.kTextTheme.headlineSmall,
        ),
      ],
    );
  }
}
