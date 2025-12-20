import 'package:checkout_payment/core/constant/app_colors.dart';
import 'package:checkout_payment/core/extension/extenison.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/card_info_widget.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/payment_info_items.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/total_price.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.kDividerColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: context.kTextTheme.headlineSmall,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: context.kTextTheme.labelLarge,
            ),
            SizedBox(height: context.height * 0.042),
            PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            SizedBox(height: context.height * 0.020),
            PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            SizedBox(height: context.height * 0.020),
            PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            Divider(height: context.height * 0.060, thickness: 2),
            TotalPrice(title: 'Total', value: r'$50.97'),
            SizedBox(height: context.height * 0.030),
            CardInfoWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: context.height * 0.050),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 29, vertical: 14),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: context.kTextTheme.labelLarge!.copyWith(
                        color: AppColors.kGreen,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
