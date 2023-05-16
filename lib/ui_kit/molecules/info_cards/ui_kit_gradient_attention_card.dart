import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitGradientAttentionCard extends StatelessWidget {
  final String message;
  final Color? textColor;

  const UiKitGradientAttentionCard({
    Key? key,
    required this.message,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageStyle = context.uiKitTheme?.boldTextTheme.subHeadline;

    return Container(
      height: 136.h,
      decoration: BoxDecoration(
        gradient: GradientFoundation.defaultRadialGradient,
        borderRadius: BorderRadiusFoundation.all24,
      ),
      child: Stack(
        children: [
          Text(
            message,
            style: messageStyle?.copyWith(color: textColor),
          ).paddingOnly(
            left: EdgeInsetsFoundation.all16,
            top: EdgeInsetsFoundation.all16,
            right: EdgeInsetsFoundation.all16,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: ImageWidget(
              height: 70.h,
              fit: BoxFit.fitHeight,
              svgAsset: GraphicsFoundation.instance.svg.trippleArrowBlack,
            ),
          ),
        ],
      ),
    );
  }
}
