import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,

          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          isHolderNameVisible: true,

          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (carditCardModel) {
            cardHolderName = carditCardModel.cardHolderName;
            expiryDate = carditCardModel.expiryDate;
            cvvCode = carditCardModel.cvvCode;
            cardNumber = carditCardModel.cardNumber;
            showBackView = carditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
