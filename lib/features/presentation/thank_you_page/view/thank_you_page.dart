import 'package:auto_route/annotations.dart';
import 'package:checkout_payment/core/extension/extenison.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/custom_Check_icon.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/custom_dashed_line.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/thank_you_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
            Positioned(
              bottom: context.height * 0.220,
              left: 208,
              right: 208,
              child: const CustomDashedLine(),
            ),
            Positioned(
              left: -20,
              bottom: context.height * .2,
              child: const CircleAvatar(backgroundColor: Colors.white),
            ),
            Positioned(
              right: -20,
              bottom: context.height * .2,
              child: const CircleAvatar(backgroundColor: Colors.white),
            ),
            const Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CustomCheckIcon(),
            ),
          ],
        ),
      ),
    );
  }
}
