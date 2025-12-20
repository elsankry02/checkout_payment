import 'package:checkout_payment/core/constant/app_colors.dart';
import 'package:checkout_payment/core/extension/extenison.dart';
import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: AppColors.kGrey,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: AppColors.kGreen,
        child: Icon(Icons.check, size: context.height * 0.050),
      ),
    );
  }
}
