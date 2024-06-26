import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class BoxIconButton extends StatelessWidget implements ButtonFactory {
  final Widget? icon;
  final BaseUiKitButtonIconData? iconInfo;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const BoxIconButton({
    super.key,
    this.icon,
    this.iconInfo,
    this.onPressed,
    this.backgroundColor,
  })  : assert(iconInfo != null || icon != null,
            'Either iconInfo or icon must be provided');

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadiusFoundation.all8,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusFoundation.all8,
            color: backgroundColor ?? theme?.colorScheme.surface1,
          ),
          child: ImageWidget(
            iconData: iconInfo?.iconData,
            link: iconInfo?.iconPath,
            height: iconInfo?.size,
            fit: BoxFit.fitHeight,
            color: iconInfo?.color ?? theme?.colorScheme.inverseSurface,
          ).paddingAll(EdgeInsetsFoundation.all6),
        ),
      ),
    );
  }
}
