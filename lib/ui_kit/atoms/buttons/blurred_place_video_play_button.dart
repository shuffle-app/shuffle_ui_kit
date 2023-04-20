import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shuffle_uikit/foundation/images_foundation.dart';
import 'package:shuffle_uikit/foundation/ui_kit_border_radius.dart';
import 'package:shuffle_uikit/tokens/assets.gen.dart';

class BlurredPlaceVideoPlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BlurredPlaceVideoPlayButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.w,
      height: 24.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadiusFoundation.all40,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Center(
          child: GraphicsFoundation.instance.svgPicture(asset: Assets.images.svg.playArrow),
        ),
      ),
    );
  }
}
