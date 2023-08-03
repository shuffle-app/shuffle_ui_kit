import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class DynamicGradientPlate extends StatelessWidget {
  final Widget content;

  const DynamicGradientPlate({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: EdgeInsetsFoundation.horizontal12,
        vertical: EdgeInsetsFoundation.vertical6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusFoundation.max,
        gradient: GradientFoundation.greyGradient,
      ),
      child: content,
    );
  }
}
