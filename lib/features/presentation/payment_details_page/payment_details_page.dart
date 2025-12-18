import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
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
                CustomCardDetails(
                  assetName: Image.asset(
                    AppSvgs.kPaypal,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.height * 0.023,
                    vertical: context.height * 0.015,
                  ),
                  borderColor: paymentDetails == PaymentDetails.pay
                      ? AppColors.kGreen
                      : AppColors.kGrey,
                  onTap: () {
                    setState(() {
                      paymentDetails = PaymentDetails.pay;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: context.height * 0.034),
          CreditCard(),
        ],
      ),
    );
  }
}

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  final formKey = GlobalKey<FormState>();
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool isShowBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isChipVisible: false,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: isShowBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel) {
            cardHolderName = CreditCardModel.cardHolderName;
            isShowBackView = CreditCardModel.isCvvFocused;
            cvvCode = CreditCardModel.cvvCode;
            expiryDate = CreditCardModel.expiryDate;
            cardNumber = CreditCardModel.cardNumber;
            setState(() {});
          },
          formKey: formKey,
        ),
      ],
    );
  }
}
