import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

showUiKitGeneralFullScreenDialog(BuildContext context, GeneralDialogData data) {

  return showModalBottomSheet(
    barrierLabel: '',
    useRootNavigator: data.useRootNavigator,
    barrierColor: const Color(0xff2A2A2A),
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    constraints: BoxConstraints(
      maxHeight: 0.95.sh,
      minHeight: 0.95.sh - (data.topPadding ?? 0),
      minWidth: 1.sw,
      maxWidth: 1.sw,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusFoundation.onlyTop24,
    ),
    clipBehavior: Clip.hardEdge,
    isDismissible: true,
    context: context,
    builder: (context) {
      return UiKitBottomModalSheet(
        data: data,
      );
    },
  );
}

//ignore: no-empty-block
void _empty() {}

//ignore: prefer-match-file-name
class GeneralDialogData {
  final bool useRootNavigator;
  final bool resizeToAvoidBottomInset;
  final Widget child;

  final Widget? bottomBar;
  final double? topPadding;
  final double? customHeight;

  final Function onDismissed;

  GeneralDialogData({
    this.customHeight,
    this.useRootNavigator = true,
    this.resizeToAvoidBottomInset = true,
    required this.child,
    this.bottomBar,
    this.topPadding,
    this.onDismissed = _empty,
  });
}
