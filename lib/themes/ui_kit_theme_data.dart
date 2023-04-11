import 'package:flutter/material.dart';
import 'package:shuffle_uikit/themes/ui_kit_text_theme.dart';

class UiKitThemeData extends ThemeExtension<UiKitThemeData> {
  final Color customColor;
  final Color cardColor;
  final InputDecorationTheme iconInputTheme;
  final InputDecorationTheme noIconInputTheme;
  final InputDecorationTheme noFillInputTheme;
  final AppBarTheme customAppBapTheme;
  final TabBarTheme uiKitTabBarTheme;
  final UiKitBoldTextTheme boldTextTheme;
  final UiKitRegularTextTheme regularTextTheme;
  final ButtonThemeData buttonTheme;
  final CardTheme cardTheme;
  final UiKitChipThemeData chipTheme;
  final ButtonStyle ordinaryButtonStyle;

  UiKitThemeData({
    required this.iconInputTheme,
    required this.ordinaryButtonStyle,
    required this.noIconInputTheme,
    required this.noFillInputTheme,
    required this.chipTheme,
    required this.customColor,
    required this.customAppBapTheme,
    required this.uiKitTabBarTheme,
    required this.boldTextTheme,
    required this.regularTextTheme,
    required this.cardColor,
    required this.buttonTheme,
    required this.cardTheme,
  });

  @override
  ThemeExtension<UiKitThemeData> copyWith({
    Color? customColor,
    Color? cardColor,
    InputDecorationTheme? iconInputTheme,
    InputDecorationTheme? noIconInputTheme,
    InputDecorationTheme? noFillInputTheme,
    AppBarTheme? customAppBapTheme,
    TabBarTheme? uiKitTabBarTheme,
    UiKitBoldTextTheme? boldTextTheme,
    UiKitRegularTextTheme? regularTextTheme,
    ButtonThemeData? buttonTheme,
    CardTheme? cardTheme,
    UiKitChipThemeData? chipTheme,
    ButtonStyle? ordinaryButtonStyle,
  }) {
    return UiKitThemeData(
      customColor: customColor ?? this.customColor,
      cardColor: cardColor ?? this.cardColor,
      iconInputTheme: iconInputTheme ?? this.iconInputTheme,
      noIconInputTheme: noIconInputTheme ?? this.noIconInputTheme,
      noFillInputTheme: noFillInputTheme ?? this.noFillInputTheme,
      customAppBapTheme: customAppBapTheme ?? this.customAppBapTheme,
      uiKitTabBarTheme: uiKitTabBarTheme ?? this.uiKitTabBarTheme,
      boldTextTheme: boldTextTheme ?? this.boldTextTheme,
      regularTextTheme: regularTextTheme ?? this.regularTextTheme,
      buttonTheme: buttonTheme ?? this.buttonTheme,
      cardTheme: cardTheme ?? this.cardTheme,
      chipTheme: chipTheme ?? this.chipTheme,
      ordinaryButtonStyle: ordinaryButtonStyle ?? this.ordinaryButtonStyle,
    );
  }

  @override
  ThemeExtension<UiKitThemeData> lerp(ThemeExtension<UiKitThemeData>? other, double t) {
    if (other is! UiKitThemeData) {
      return this;
    }
    return UiKitThemeData(
      customColor: Color.lerp(customColor, other.customColor, t) ?? Colors.white,
      iconInputTheme: iconInputTheme,
      noIconInputTheme: noIconInputTheme,
      noFillInputTheme: noFillInputTheme,
      customAppBapTheme: customAppBapTheme,
      uiKitTabBarTheme: uiKitTabBarTheme,
      boldTextTheme: boldTextTheme,
      regularTextTheme: regularTextTheme,
      cardColor: cardColor,
      buttonTheme: buttonTheme,
      cardTheme: cardTheme,
      chipTheme: chipTheme,
      ordinaryButtonStyle: ordinaryButtonStyle,
    );
  }
}

class UiKitChipThemeData {
  final Color backgroundColor;
  final Border? border;

  UiKitChipThemeData({
    required this.backgroundColor,
    this.border,
  });
}
