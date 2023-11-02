import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class BlackDialogButton extends StatelessWidget implements ButtonFactory {
  final String text;
  final VoidCallback? onPressed;
  final bool small;
  final ButtonFit? fit;

  const BlackDialogButton({
    super.key,
    required this.text,
    required this.small,
    this.onPressed,
    this.fit,
  });
  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.boldTextTheme;
    final textStyle = small ? textTheme?.caption1Bold : textTheme?.bodyUpperCase;

    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith((states) {
          double? width;
          if (fit == ButtonFit.fitWidth) width = double.infinity;
          Size size = const Size.fromHeight(48);
          if (small) size = const Size.fromHeight(28);
          if (width != null && small) size = Size(width, 28);
          if (width != null && !small) size = Size(width, 48);

          return size;
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.disabled) ? ColorsFoundation.darkNeutral300 : Colors.black;
        }),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(borderRadius: BorderRadiusFoundation.all24),
        ),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return ColorsFoundation.darkNeutral900;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
        splashFactory: InkSplash.splashFactory,
      ),
      onPressed: onPressed,
      child: Text(
        text.toUpperCase(),
        style: textStyle?.copyWith(color: Colors.white),
      ),
    );
  }
}
