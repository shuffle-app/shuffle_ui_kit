import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class OutlinedIconButton extends StatelessWidget implements ButtonFactory {
  final Widget? icon;
  final VoidCallback? onPressed;
  final bool? loading;
  final bool hideBorder;
  final Color? borderColor;

  const OutlinedIconButton({
    Key? key,
    this.icon,
    this.onPressed,
    this.loading,
    this.borderColor,
    this.hideBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;

    return Material(
      clipBehavior: Clip.hardEdge,
      color: enabled ? Colors.white.withOpacity(0.01) : ColorsFoundation.darkNeutral300,
      shape: CircleBorder(
        side: hideBorder
            ? BorderSide.none
            : BorderSide(
                color: enabled ? borderColor ?? Colors.white : ColorsFoundation.darkNeutral500,
                width: 2.w,
              ),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadiusFoundation.max,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusFoundation.max,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: icon?.paddingAll(EdgeInsetsFoundation.all16),
          ),
        ),
      ),
    ).loadingWrap(loading ?? false);
  }
}
