import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:checkout_payment/core/components/custom_primary_botton.dart';
import 'package:checkout_payment/core/router/router.dart';
import 'package:checkout_payment/features/presentation/payment_details_page/widget/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/custom_appbar.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_enums.dart';
import '../../../core/constant/app_svgs.dart';
import '../../../core/extension/extenison.dart';
import 'widget/custom_card_details.dart';

@RoutePage()
class PaymentDetailsPage extends StatefulWidget {
  const PaymentDetailsPage({super.key});

  @override
  State<PaymentDetailsPage> createState() => _PaymentDetailsPageState();
}

class _PaymentDetailsPageState extends State<PaymentDetailsPage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late PaymentDetails paymentDetails;
  @override
  void initState() {
    paymentDetails = PaymentDetails.creditCard;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        context,
        title: "Payment Details",
        onTap: () => context.router.maybePop(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: context.height * 0.020),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                CustomCardDetails(
                  assetName: SvgPicture.asset(
                    AppSvgs.kCard,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.height * 0.029,
                    vertical: context.height * 0.016,
                  ),
                  margin: EdgeInsetsDirectional.only(
                    end: context.height * 0.020,
                  ),
                  borderColor: paymentDetails == PaymentDetails.creditCard
                      ? AppColors.kGreen
                      : AppColors.kGrey,
                  onTap: () {
                    setState(() {
                      paymentDetails = PaymentDetails.creditCard;
                    });
                  },
                ),
                CustomCardDetails(
                  assetName: SvgPicture.asset(
                    AppSvgs.kPaypal,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.height * 0.014,
                    vertical: context.height * 0.015,
                  ),
                  margin: EdgeInsetsDirectional.only(
                    end: context.height * 0.020,
                  ),
                  borderColor: paymentDetails == PaymentDetails.payPal
                      ? AppColors.kGreen
                      : AppColors.kGrey,
                  onTap: () {
                    setState(() {
                      paymentDetails = PaymentDetails.payPal;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: context.height * 0.034),
          CreditCard(formKey: formKey, autovalidateMode: autovalidateMode),
          SizedBox(height: context.height * 0.034),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomPrimaryButton(
                onTap: () {
                  if (!formKey.currentState!.validate()) {
                    log('payment');
                  } else {
                    context.router.push(ThankYouRoute());
                  }
                },
                title: 'Payment',
                style: context.kTextTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                backGroundColor: AppColors.kGreen,
                padding: EdgeInsets.symmetric(vertical: context.height * 0.023),
                borderRadius: BorderRadius.circular(context.height * 0.015),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
