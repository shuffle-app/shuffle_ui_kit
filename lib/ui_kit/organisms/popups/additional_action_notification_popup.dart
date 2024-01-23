import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class AdditionalActionNotificationPopUp extends BaseNotificationPopup {
  final Widget? primaryActionWidget;
  final Widget? secondaryActionWidget;
  final Widget? dismissActionWidget;

  const AdditionalActionNotificationPopUp({
    Key? key,
    required NotificationPopupRequiredData requiredData,
    this.primaryActionWidget,
    this.secondaryActionWidget,
    this.dismissActionWidget,
  }) : super(
          key: key,
          requiredData: requiredData,
        );

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final titleStyle = theme?.boldTextTheme.body.copyWith(color: theme.colorScheme.inverseSurface);

    return BlurredCardWithBorder(
      border: requiredData.gradientBorder ? GradientFoundation.gradientBorder : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              requiredData.icon,
              SpacingFoundation.horizontalSpace12,
              Expanded(
                child: requiredData.customTitle ??
                    Text(
                      requiredData.titleString ?? '',
                      style: titleStyle,
                      textAlign: TextAlign.left,
                    ),
              ),
            ],
          ),
          SpacingFoundation.verticalSpace4,
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: secondaryActionWidget ?? const SizedBox(),
              ),
              SpacingFoundation.horizontalSpace8,
              Expanded(
                child: primaryActionWidget ?? const SizedBox(),
              ),
            ],
          ),
          if (dismissActionWidget != null) ...[
            SpacingFoundation.verticalSpace4,
            Opacity(opacity: 0.7, child: dismissActionWidget!)
          ]
        ],
      ),
    );
  }
}
