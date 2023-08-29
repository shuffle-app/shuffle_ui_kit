import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';
import 'package:shuffle_uikit/ui_kit/content_wrappers/ui_kit_border_wrapper.dart';

class FingerprintSwitch extends StatefulWidget {
  const FingerprintSwitch({super.key});

  @override
  State<FingerprintSwitch> createState() => _FingerprintSwitchState();
}

class _FingerprintSwitchState extends State<FingerprintSwitch> {
  double _currentWidth = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getParentSize();
    });
  }

  void _getParentSize() {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() => _currentWidth = renderBox.size.width);
  }

  @override
  Widget build(BuildContext context) {
    final height = 0.27.sw * 1.68;

    return Stack(
      children: [
        UiKitBorderWrapper(
          height: height,
          child: ClipRRect(
            borderRadius: BorderRadiusFoundation.all28,
            child: Transform(
              alignment: Alignment.bottomCenter,
              transform: Matrix4.identity()..scale(1.0, 0.8),
              child: ImageWidget(
                width: double.infinity,
                rasterAsset: GraphicsFoundation.instance.png.dubaiSilhouette,
                fit: BoxFit.cover,
                color: ColorsFoundation.surface2,
              ),
            ),
          ),
        ),
        FingerprintButton(
          animationPath: GraphicsFoundation
              .instance.animations.lottie.animationTouchId.path,
          title: Text(
            'Guess',
            style: context.uiKitTheme?.boldTextTheme.subHeadline,
          ),
          parentWidth: _currentWidth,
        ),
      ],
    );
  }
}
