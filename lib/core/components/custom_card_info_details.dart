import 'package:checkout_payment/core/extension/extenison.dart';
import 'package:flutter/material.dart';

class CustomCardInfoDetails extends StatelessWidget {
  final String title;
  final String price;
  final TextStyle? titleStyle, priceStyle;
  const CustomCardInfoDetails({
    super.key,
    required this.title,
    required this.price,
    this.titleStyle,
    this.priceStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.height * 0.003),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: titleStyle),
          Text(price, style: priceStyle),
        ],
      ),
    );
  }
}
