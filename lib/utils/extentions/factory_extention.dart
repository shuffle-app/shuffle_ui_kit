import 'package:flutter/cupertino.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

extension FactoryExtention on BuildContext {
  Widget smallButton({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    bool? isTextButton,
    bool? blurred,
  }) {
    return WidgetsFactory.of(this)!
        .createSmallButton(
          text: text ?? '',
          onPressed: onPressed,
          icon: icon,
          isTextButton: isTextButton ?? false,
          blurred: blurred,
        )
        .build(this);
  }

  Widget outlinedButton({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    Color? color,
  }) {
    return WidgetsFactory.of(this)!
        .createOutlinedButton(
          text: text ?? '',
          onPressed: onPressed,
          icon: icon,
          color: color,
        )
        .build(this);
  }

  Widget smallOutlinedButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    Color? color,
  }) {
    return WidgetsFactory.of(this)!
        .createSmallOutlinedButton(
          text: text,
          onPressed: onPressed,
          icon: icon,
          color: color,
        )
        .build(this);
  }

  Widget dialogButton({
    required String text,
    VoidCallback? onPressed,
    DialogButtonType? dialogButtonType,
    bool? small,
  }) {
    return WidgetsFactory.of(this)!
        .createDialogButton(
          text: text,
          onPressed: onPressed,
          dialogButtonType: dialogButtonType,
          small: small,
        )
        .build(this);
  }

  Widget button({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    bool? isTextButton,
    bool? blurred,
  }) {
    return WidgetsFactory.of(this)!
        .createOrdinaryButton(
          text: text ?? '',
          onPressed: onPressed,
          icon: icon,
          isTextButton: isTextButton ?? false,
          blurred: blurred,
        )
        .build(this);
  }

  Widget gradientButton({
     String text = '',
    VoidCallback? onPressed,
    Widget? icon,
  }) {
    return WidgetsFactory.of(this)!
        .createGradientButton(
          text: text,
          onPressed: onPressed,
          icon: icon,
        )
        .build(this);
  }

  Widget userTile({
    String? name,
    String? username,
    String? avatarUrl,
    UserTileType? type,
    VoidCallback? onTap,
  }) {
    return WidgetsFactory.of(this)!
        .createUserTile(
          name: name,
          username: username,
          avatarUrl: avatarUrl,
          type: type,
          onTap: onTap,
        )
        .build(this);
  }
}

enum DialogButtonType { buttonWhite, buttonBlack }
