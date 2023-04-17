import 'package:flutter/material.dart';
import 'package:shuffle_uikit/themes/ui_kit_theme_data.dart';

extension UiKitTheme on BuildContext {
  UiKitThemeData? get uiKitTheme => Theme.of(this).extension<UiKitThemeData>();
}
