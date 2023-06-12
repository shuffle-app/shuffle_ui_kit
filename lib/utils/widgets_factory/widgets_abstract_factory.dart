import 'package:flutter/cupertino.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

abstract class WidgetsAbstractFactory {
  NotificationPopUpFactory createNotificationPopUp({
    required NotificationPopupRequiredData requiredData,
    Widget? primaryActionWidget,
    Widget? secondaryActionWidget,
    Widget? dismissActionWidget,
  });

  ButtonFactory createBadgeButtonNoValue({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    Alignment? badgeAlignment,
  });

  ButtonFactory createBadgeButtonWithValue({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    int? badgeValue,
    Alignment? alignment,
  });

  ButtonFactory createOrdinaryButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool isTextButton = false,
    bool? blurred,
  });

  ButtonFactory createDialogButton({
    required String text,
    VoidCallback? onPressed,
    DialogButtonType? dialogButtonType,
    bool? small,
  });

  ButtonFactory createSmallButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool isTextButton = false,
    bool? blurred,
  });

  ButtonFactory createOutlinedButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    Color? color,
  });

  ButtonFactory createSmallOutlinedButton({
    String? text,
    VoidCallback? onPressed,
    ImageWidget? icon,
    Color? color,
  });

  ButtonFactory createGradientButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
  });

  UserTileFactory createUserTile({
    required String name,
    required String username,
    required String avatarUrl,
    required UserTileType type,
  });
// InputFieldFactory createInputField({
//   required TextEditingController controller,
//   String? hintText,
//   String? errorText,
//   bool enabled = true,
//   String? Function(String?)? validator,
// });
}

abstract class ButtonFactory {
  Widget build(BuildContext context);
}

abstract class UserTileFactory {
  Widget build(BuildContext context);
}

abstract class NotificationPopUpFactory {
  Widget build(BuildContext context);
}

class WidgetsFactory extends InheritedWidget implements WidgetsAbstractFactory {
  const WidgetsFactory({required super.child, super.key});

  static WidgetsFactory? of(BuildContext context) {
    final instance = context.findAncestorWidgetOfExactType<WidgetsFactory>();

    return instance;
  }

  @override
  ButtonFactory createSmallOutlinedButton({
    String? text,
    VoidCallback? onPressed,
    ImageWidget? icon,
    Color? color,
  }) {
    if ((text != null && text.isNotEmpty) || icon != null) {
      return SmallOutlinedButton(onPressed: onPressed, text: text ?? '', borderColor: color, textColor: color, icon: icon);
    } else {
      throw UnimplementedError('Outlined button with your parameters is not implemented');
    }
  }

  @override
  ButtonFactory createBadgeButtonNoValue({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    Alignment? badgeAlignment,
  }) {
    return BadgeIconButtonNoValue(
      onPressed: onPressed,
      icon: icon,
      badgeAlignment: badgeAlignment,
    );
  }

  @override
  ButtonFactory createOutlinedButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool? blurred,
    Color? color,
  }) {
    if (text.isEmpty && icon != null) {
      return OutlinedIconButton(
        icon: icon,
        onPressed: onPressed,
      );
    } else {
      throw UnimplementedError('Outlined button with your parameters is not implemented');
    }
  }

  @override
  ButtonFactory createGradientButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
  }) {
    final hasIcon = icon != null;
    final gradientIconButton = hasIcon && text.isEmpty;
    if (gradientIconButton) {
      return GradientIconButton(
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadiusFoundation.max,
      );
    } else if (!hasIcon && text.isNotEmpty) {
      return GradientButton(
        text: text,
        onPressed: onPressed,
      );
    } else if (hasIcon && text.isNotEmpty) {
      return GradientButtonWithTextAndIcon(
        text: text,
        icon: icon,
        onPressed: onPressed,
      );
    } else {
      throw UnimplementedError('Gradient button with your parameters is not implemented');
    }
  }

  @override
  ButtonFactory createOrdinaryButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool isTextButton = false,
    bool? blurred,
  }) {
    final hasIcon = icon != null;
    final onlyIconButton = hasIcon && text.isEmpty && !isTextButton && !(blurred ?? false);
    if (isTextButton) {
      return OrdinaryTextButton(
        text: text,
        onPressed: onPressed,
        icon: icon,
      );
    } else if (hasIcon && !onlyIconButton && !(blurred ?? false)) {
      return OrdinaryButtonWithIcon(
        text: text,
        onPressed: onPressed,
        icon: icon,
      );
    } else if (onlyIconButton) {
      return FilledIconButton(
        icon: icon,
        onPressed: onPressed,
      );
    } else if (hasIcon && (blurred ?? false)) {
      return BlurredButtonWithIcon(
        icon: icon,
        onPressed: onPressed,
      );
    } else {
      return OrdinaryButton(
        text: text,
        onPressed: onPressed,
      );
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  @override
  ButtonFactory createSmallButton({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool isTextButton = false,
    bool? blurred,
  }) {
    final hasIcon = icon != null;
    final hasBlur = blurred ?? false;
    if (hasIcon && hasBlur) {
      return SmallBlurredButtonWithIcon(
        icon: icon,
        onPressed: onPressed,
      );
    }
    if (hasIcon && !hasBlur) {
      return SmallButtonWithIcon(
        icon: icon,
        onPressed: onPressed,
      );
    }

    return SmallOrdinaryButton(
      text: text,
      onPressed: onPressed,
    );
  }

  @override
  UserTileFactory createUserTile({
    String? name,
    String? username,
    String? avatarUrl,
    UserTileType? type,
    VoidCallback? onTap,
  }) {
    switch (type) {
      case UserTileType.pro:
        return ProUserTile(
          name: name,
          avatarUrl: avatarUrl,
          username: username,
          onTap: onTap,
        );
      case UserTileType.ordinary:
        return OrdinaryUserTile(
          name: name,
          avatarUrl: avatarUrl,
          username: username,
          onTap: onTap,
        );
      case UserTileType.premium:
        return PremiumUserTile(
          name: name,
          avatarUrl: avatarUrl,
          username: username,
          onTap: onTap,
        );
      case UserTileType.influencer:
        return InfluencerUserTile(
          name: name,
          avatarUrl: avatarUrl,
          username: username,
          onTap: onTap,
        );
      case null:
        return OrdinaryUserTile(
          name: name,
          avatarUrl: avatarUrl,
          username: username,
          onTap: onTap,
        );
    }
  }

  @override
  ButtonFactory createDialogButton({
    required String text,
    VoidCallback? onPressed,
    DialogButtonType? dialogButtonType,
    bool? small,
  }) {
    switch (dialogButtonType) {
      case DialogButtonType.buttonWhite:
        return WhiteDialogButton(
          text: text,
          onPressed: onPressed,
          small: small ?? false,
        );
      case DialogButtonType.buttonBlack:
        return BlackDialogButton(
          text: text,
          onPressed: onPressed,
          small: small ?? false,
        );
      case null:
        throw UnimplementedError();
      case DialogButtonType.buttonRed:
        return RedDialogButton(
          text: text,
          onPressed: onPressed,
          small: small ?? false,
        );
    }
  }

  @override
  NotificationPopUpFactory createNotificationPopUp({
    required NotificationPopupRequiredData requiredData,
    Widget? primaryActionWidget,
    Widget? secondaryActionWidget,
    Widget? dismissActionWidget,
  }) {
    final hasAllActions = primaryActionWidget != null && secondaryActionWidget != null && dismissActionWidget != null;
    if (hasAllActions) {
      return AdditionalActionNotificationPopUp(
        requiredData: requiredData,
        primaryActionWidget: primaryActionWidget,
        secondaryActionWidget: secondaryActionWidget,
        dismissActionWidget: dismissActionWidget,
      );
    }

    return OrdinaryNotificationPopUp(
      requiredData: requiredData,
      primaryActionWidget: primaryActionWidget,
      dismissActionWidget: dismissActionWidget,
    );
  }

  @override
  ButtonFactory createBadgeButtonWithValue({
    String? text,
    VoidCallback? onPressed,
    Widget? icon,
    int? badgeValue,
    Alignment? alignment,
  }) {
    return BadgeIconButton(
      icon: icon,
      onPressed: onPressed,
      badgeValue: badgeValue,
    );
  }

// @override
// InputFieldFactory createInputField({
//   required TextEditingController controller,
//   String? hintText,
//   String? errorText,
//   bool enabled = true,
//   String? Function(String?)? validator,
// }) {
//   return InputField();
// }
}
