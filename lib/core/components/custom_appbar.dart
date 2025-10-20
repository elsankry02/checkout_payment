import '../constant/app_svgs.dart';
import '../extension/extenison.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar CustomAppbar(
  BuildContext context, {
  required String title,
  void Function()? onTap,
}) {
  return AppBar(
    leading: GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        AppSvgs.kArrow,
        height: 24,
        fit: BoxFit.scaleDown,
      ),
    ),
    title: Text(
      title,
      style: context.kTextTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      ),
    ),
    centerTitle: true,
  );
}
