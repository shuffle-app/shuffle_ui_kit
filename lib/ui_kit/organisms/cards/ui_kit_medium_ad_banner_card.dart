import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitMediumAdBannerCard extends StatelessWidget implements AdvertisementFactory {
  final double availableWidth;
  final VoidCallback? onTap;
  final String imageLink;
  final String title;
  final double? customHeight;

  const UiKitMediumAdBannerCard({
    Key? key,
    required this.availableWidth,
    this.onTap,
    this.customHeight,
    required this.imageLink,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.regularTextTheme;
    final height = availableWidth * 0.7583;

    return Material(
      borderRadius: BorderRadiusFoundation.all24,
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          height: customHeight ?? height,
          width: availableWidth,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ImageWidget(
                link: imageLink,
                fit: BoxFit.cover,
                errorWidget: const UiKitBigPhotoErrorWidget(),
              ),
              Positioned(
                bottom: EdgeInsetsFoundation.vertical12,
                left: EdgeInsetsFoundation.horizontal12,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadiusFoundation.max,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Text(
                      title,
                      style: textTheme?.title1,
                    ).paddingSymmetric(
                      vertical: EdgeInsetsFoundation.vertical2,
                      horizontal: EdgeInsetsFoundation.horizontal16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}