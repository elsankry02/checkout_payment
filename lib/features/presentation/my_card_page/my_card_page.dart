import 'package:auto_route/annotations.dart';
import '../../../core/components/custom_card_info_details.dart';
import '../../../core/components/custom_divider.dart';
import '../../../core/components/custom_primary_botton.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/extension/extenison.dart';
import '../../../core/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: context.kTextTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: context.height * 0.020),
        children: [
          SizedBox(height: context.height * 0.025),
          Center(child: Image.asset(AppImages.kBasketImage)),
          SizedBox(height: context.height * 0.025),
          CustomCardInfoDetails(
            title: 'Order Subtotal',
            titleStyle: context.kTextTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
            price: r'$42.97',
            priceStyle: context.kTextTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          CustomCardInfoDetails(
            title: 'Discount',
            titleStyle: context.kTextTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
            price: r'$0',
            priceStyle: context.kTextTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          CustomCardInfoDetails(
            title: 'Shipping',
            titleStyle: context.kTextTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
            price: r'$8',
            priceStyle: context.kTextTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: context.height * 0.017),
          CustomDivider(
            color: AppColors.kDividerColor,
            thickness: 2,
            indent: context.height * 0.025,
            endIndent: context.height * 0.025,
          ),
          SizedBox(height: context.height * 0.017),
          CustomCardInfoDetails(
            title: 'Total',
            titleStyle: context.kTextTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
            price: r'$50.97',
            priceStyle: context.kTextTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.height * 0.017),
          CustomPrimaryButton(
            title: 'Complete Payment',
            style: context.kTextTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w500,
            ),
            backGroundColor: AppColors.kGreen,
            padding: EdgeInsets.symmetric(vertical: context.height * 0.023),
            borderRadius: BorderRadius.circular(context.height * 0.015),
            onTap: () => router.push(PaymentDetailsRoute()),
          ),
        ],
      ),
    );
  }
}
