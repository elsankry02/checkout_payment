import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? thickness, indent, endIndent;
  final Color? color;
  const CustomDivider({
    super.key,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
