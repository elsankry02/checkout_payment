import 'package:auto_route/auto_route.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/custom_Check_icon.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/custom_dashed_line.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/widget/thank_you_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .220,
            left: 28,
            right: 28,
            child: const CustomDashedLine(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
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
    );
  }
}
