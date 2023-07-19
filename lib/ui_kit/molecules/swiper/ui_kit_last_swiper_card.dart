import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitLastSwiperCard extends BaseUiKitSwiperCard {
  final double? height;
  final double? width;

  UiKitLastSwiperCard({
    super.key,
    this.height,
    this.width,
  }) : super(
          tags: [],
          title: '',
          subtitle: '',
        );

  UiKitLastSwiperCard.fixed({super.key})
      : width = 267.w,
        height = 316.h,
        super(
          tags: [],
          title: '',
          subtitle: '',
        );

  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.boldTextTheme;

    return  UiKitCardWrapper(
      borderRadius:BorderRadiusFoundation.all40,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Oops!',
            style: textTheme?.body
                .copyWith(color: ColorsFoundation.darkNeutral900),
            textAlign: TextAlign.center,
          ),
          SpacingFoundation.verticalSpace4,
          ImageWidget(
            svgAsset: GraphicsFoundation.instance.svg.checkCircle,
          ),
          SpacingFoundation.verticalSpace4,
          Text(
            'That\'s all for now!',
            style: textTheme?.body
                .copyWith(color: ColorsFoundation.darkNeutral900),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ).paddingAll(EdgeInsetsFoundation.all16);
  }
}
