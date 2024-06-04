import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class ErrorSnackBar extends StatelessWidget implements SnackBarFactory{
  const ErrorSnackBar({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.boldTextTheme;
    final colorScheme = context.uiKitTheme?.colorScheme;
    return   DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme?.surface2,
        borderRadius: BorderRadiusFoundation.all12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: ColorsFoundation.error
                  .withOpacity(0.16),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              ShuffleUiKitIcons.alertcircle,
              color: ColorsFoundation.error,
            ).paddingAll(EdgeInsetsFoundation.all6),
          ),
          SpacingFoundation.horizontalSpace8,
          Expanded(
            child: Text(
              message,
              style: textTheme?.body,
            ),
          ),
          SpacingFoundation.horizontalSpace8,
          InkWell(
            onTap: () => context.pop(),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Icon(
              ShuffleUiKitIcons.x,
              color: ColorsFoundation.mutedText,
              size: 12.sp,
            ),
          )
        ],
      ).paddingAll(EdgeInsetsFoundation.all16),
    );
  }
}
