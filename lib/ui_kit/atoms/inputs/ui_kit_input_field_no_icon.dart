import 'package:flutter/material.dart';
import 'package:shuffle_uikit/foundation/colors_foundation.dart';
import 'package:shuffle_uikit/themes/ui_kit_theme_data.dart';
import 'package:shuffle_uikit/ui_kit/atoms/inputs/input_field.dart';

class UiKitInputFieldNoIcon extends StatefulWidget implements UiKitInputField {
  const UiKitInputFieldNoIcon({
    Key? key,
    required this.controller,
    this.errorText,
    this.hintText,
    this.validator,
    this.enabled = true,
  }) : super(key: key);

  @override
  final TextEditingController controller;
  @override
  final bool enabled;
  @override
  final String? errorText;
  @override
  final String? hintText;
  @override
  final String? Function(String? p1)? validator;

  @override
  State<UiKitInputFieldNoIcon> createState() => _UiKitInputFieldNoIconState();
}

class _UiKitInputFieldNoIconState extends State<UiKitInputFieldNoIcon> {
  final GlobalKey<FormFieldState> _key = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final uiKitTheme = Theme.of(context).extension<UiKitThemeData>();
        final inputTheme = uiKitTheme?.noIconInputTheme;
        final errorStyle = uiKitTheme?.regularTextTheme.caption2.copyWith(color: ColorsFoundation.error);
        final inputTextStyle = uiKitTheme?.boldTextTheme.caption1Medium.copyWith(
          color: _key.currentState?.hasError ?? false ? ColorsFoundation.error : Colors.white,
        );
        final hintStyle = uiKitTheme?.boldTextTheme.caption1UpperCaseMedium.copyWith(
          color: widget.enabled ? Colors.white.withOpacity(0.48) : ColorsFoundation.solidGreyText.withOpacity(0.16),
        );
        return Theme(
          data: Theme.of(context).copyWith(
            inputDecorationTheme: inputTheme,
            disabledColor: ColorsFoundation.darkNeutral.withOpacity(0.16),
          ),
          child: TextFormField(
            key: _key,
            enabled: widget.enabled,
            style: inputTextStyle,
            controller: widget.enabled ? widget.controller : null,
            validator: widget.validator,
            decoration: InputDecoration(
              hintText: widget.hintText,
              errorText: widget.errorText,
              errorMaxLines: 1,
              errorStyle: errorStyle,
              hintStyle: hintStyle,
            ),
          ),
        );
      },
    );
  }
}
