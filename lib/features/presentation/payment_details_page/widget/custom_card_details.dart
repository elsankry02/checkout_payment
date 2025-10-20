import '../../../../core/extension/extenison.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardDetails extends StatelessWidget {
  final Color borderColor;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding, margin;
  final String assetName;
  const CustomCardDetails({
    super.key,
    required this.borderColor,
    required this.assetName,
    this.onTap,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.height * 0.015),
          border: Border.all(color: borderColor, width: context.height * 0.002),
        ),
        child: Center(
          child: SvgPicture.asset(assetName, height: 24, fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}
