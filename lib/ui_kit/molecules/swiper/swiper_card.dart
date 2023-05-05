import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

abstract class BaseUiKitSwiperCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final SvgGenImage? svgImage;
  final AssetGenImage? pngImage;
  final List<UiKitTagWidget> tags;

  const BaseUiKitSwiperCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.tags,
    this.svgImage,
    this.pngImage,
  })  : assert(svgImage != null || pngImage != null),
        super(key: key);
}

class UiKitSwiperAdCard extends BaseUiKitSwiperCard {
  const UiKitSwiperAdCard({
    super.key,
    super.svgImage,
    super.tags = const [],
    super.pngImage,
    super.title = '',
    super.subtitle = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 267.w,
      height: 316.h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusFoundation.all40,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ImageWidget(
            rasterAsset: pngImage,
            svgAsset: svgImage,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class UiKitSwiperCard extends BaseUiKitSwiperCard {
  const UiKitSwiperCard({
    super.key,
    super.svgImage,
    super.pngImage,
    required super.tags,
    required super.title,
    required super.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = context.uiKitTheme?.boldTextTheme.body;
    final subtitleStyle = context.uiKitTheme?.boldTextTheme.caption1Medium;
    return Container(
      width: 267.w,
      height: 316.h,
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
              rasterAsset: pngImage,
              svgAsset: svgImage,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusFoundation.all40,
                    gradient: GradientFoundation.defaultRadialGradient,
                  ),
                  child: Text(
                    '+20',
                    style: context.uiKitTheme?.boldTextTheme.caption1Bold.copyWith(color: Colors.black),
                  ).paddingSymmetric(
                    vertical: EdgeInsetsFoundation.vertical8,
                    horizontal: EdgeInsetsFoundation.horizontal12,
                  ),
                ),
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusFoundation.all40,
                  color: Colors.white.withOpacity(0.05),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        title,
                        style: titleStyle,
                      ),
                      Text(
                        subtitle,
                        style: subtitleStyle,
                      ),
                      SpacingFoundation.verticalSpace4,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: tags,
                        ),
                      ),
                    ],
                  ).paddingAll(EdgeInsetsFoundation.all12),
                ),
              ),
            ],
          ).paddingAll(EdgeInsetsFoundation.all16),
        ],
      ).paddingAll(EdgeInsetsFoundation.all16),
    );
  }
}
