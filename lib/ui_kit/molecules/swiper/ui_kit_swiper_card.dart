import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitSwiperCard extends BaseUiKitSwiperCard {
  const UiKitSwiperCard({
    super.key,
    super.imageLink,
    super.onTap,
    super.pointsToGain,
    required super.tags,
    required super.title,
    required super.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.boldTextTheme;

    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: kIsWeb ? 267 : 267.w,
          height: kIsWeb ? 316 : 316.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusFoundation.all40,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusFoundation.all40,
                child: ImageWidget(
                  link: imageLink,
                  fit: BoxFit.cover,
                  errorWidget: const UiKitBigPhotoErrorWidget(),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: pointsToGain == null
                        ? null
                        : DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusFoundation.all40,
                              gradient: GradientFoundation.defaultRadialGradient,
                            ),
                            child: Text(
                              '+$pointsToGain',
                              style: textTheme?.caption1Bold.copyWith(color: Colors.black),
                            ).paddingSymmetric(
                              vertical: EdgeInsetsFoundation.vertical8,
                              horizontal: EdgeInsetsFoundation.horizontal12,
                            ),
                          ),
                  ),
                  UiKitSwiperCardInfo(
                    title: title,
                    subtitle: subtitle,
                    tags: tags,
                  ),
                ],
              ).paddingAll(EdgeInsetsFoundation.all16),
            ],
          ).paddingAll(EdgeInsetsFoundation.all16),
        ));
  }
}
