import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitCompactTextCard extends StatelessWidget {
  final String text;
  final bool showRemoveButton;
  final VoidCallback? onTap;
  final bool showCheckedBackground;

  const UiKitCompactTextCard({
    super.key,
    required this.text,
    this.onTap,
    this.showRemoveButton = false,
    this.showCheckedBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final textTheme = theme?.boldTextTheme;

    return Material(
      borderRadius: BorderRadiusFoundation.all24,
      clipBehavior: Clip.hardEdge,
      color: showCheckedBackground ? theme?.colorScheme.surface2 : theme?.colorScheme.surface4,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: showCheckedBackground
              ? BoxDecoration(
              borderRadius: BorderRadiusFoundation.all24,
              border: Border.all(color: theme!.colorScheme.inversePrimary))
              : null,
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Text(text, style: textTheme?.caption1Medium),
            if (showRemoveButton) ...[
              SpacingFoundation.horizontalSpace4,
              ImageWidget(
                iconData: ShuffleUiKitIcons.x,
                color: theme?.colorScheme.inversePrimary,
                height: 10.w,
                fit: BoxFit.fitWidth,
              )
            ]
          ]).paddingSymmetric(
            vertical: EdgeInsetsFoundation.vertical4,
            horizontal: EdgeInsetsFoundation.horizontal8,
          ),
        ),
      ),
    );
  }
}
