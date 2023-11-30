import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class VerticalMessageCard extends StatelessWidget {
  final String message;
  final IconData? iconData;
  final VoidCallback? onPressed;
  final String? iconLink;

  const VerticalMessageCard({
    Key? key,
    required this.message,
    this.iconData,
    this.iconLink,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = 0.33.sw;
    final messageStyle = context.uiKitTheme?.boldTextTheme.caption1UpperCaseMedium;
    final colorScheme = context.uiKitTheme?.colorScheme;

    return Material(
      borderRadius: BorderRadiusFoundation.all24,
      color: colorScheme?.surface3,
      child: InkWell(
        borderRadius: BorderRadiusFoundation.all24,
        onTap: onPressed,
        child: Ink(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusFoundation.all24,
            color: colorScheme?.surface3,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconData != null || iconLink != null)
                ImageWidget(
                  iconData: iconData,
                  link: iconLink,
                  height: 0.1875.sw,
                  width: 0.1875.sw,
                  fit: BoxFit.cover,
                ),
              if (iconData != null || iconLink != null) SpacingFoundation.verticalSpace2,
              Text(
                /// end line symbols added to make sure that the text is more than 4 lines
                /// so that the card height is always fixed
                '${message.toUpperCase()}\n\n\n\n',
                style: messageStyle,
                textAlign: TextAlign.center,
                maxLines: 4,
              ),
            ],
          ).paddingAll(EdgeInsetsFoundation.all12),
        ),
      ),
    );
  }
}
