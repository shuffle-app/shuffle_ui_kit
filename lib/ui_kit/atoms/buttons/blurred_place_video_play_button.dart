import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class BlurredPlaceVideoPlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BlurredPlaceVideoPlayButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusFoundation.all40,
      ),
      color: Colors.white.withOpacity(0.15),
      child: InkWell(
        borderRadius: BorderRadiusFoundation.all40,
        onTap: onPressed,
        child: Container(
          width: 32.w,
          height: 24.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusFoundation.all40,
          ),
          alignment: Alignment.center,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: const ImageWidget(iconData: ShuffleUiKitIcons.playArrow, fit: BoxFit.contain,).paddingOnly(left: 4.w),
          ),
        ),
      ),
    );
  }
}
