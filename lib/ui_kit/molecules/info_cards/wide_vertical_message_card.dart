import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class WideVerticalMessageCard extends StatelessWidget {
  final String message;
  final String? iconLink;
  final VoidCallback? onPressed;

  const WideVerticalMessageCard({
    Key? key,
    required this.message,
    this.iconLink,
    this.onPressed,
  }) : super(key: key);

  double get width => 0.375.sw;

  @override
  Widget build(BuildContext context) {
    final messageStyle = context.uiKitTheme?.boldTextTheme.caption1UpperCaseMedium;

    return Material(
      borderRadius: BorderRadiusFoundation.all24,
      color: Theme.of(context).colorScheme.secondary,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpacingFoundation.verticalSpace12,
              if (iconLink != null)
                ImageWidget(
                  link: iconLink!,
                  height: 0.1875.sw,
                  width: 0.1875.sw,
                  fit: BoxFit.cover,
                ),
              if (iconLink != null) SpacingFoundation.verticalSpace2,
              Text(
                /// end line symbols added to make sure that the text is more than 3 lines
                /// so that the card height is always fixed
                '$message\n\n\n'.toUpperCase(),
                style: messageStyle,
                textAlign: TextAlign.center,
                maxLines: 3,
              ).paddingSymmetric(horizontal: EdgeInsetsFoundation.horizontal12),
              SpacingFoundation.verticalSpace12,
            ],
          ),
        ),
      ),
    );
  }
}
