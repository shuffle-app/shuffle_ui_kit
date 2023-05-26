import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitCardWrapper extends StatelessWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Color? color;

  const UiKitCardWrapper({
    Key? key,
    required this.child,
    this.borderRadius,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;

    return Theme(
      data: Theme.of(context).copyWith(cardTheme: theme?.cardTheme, cardColor: theme?.cardColor),
      child: Card(
        color: color ?? theme?.cardColor ?? ColorsFoundation.surface,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadiusFoundation.all24,
        ),
        child: Container(
          width: width,
          height: height,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ),
    );
  }
}
