import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

Future<Object?> showComplaintPopUp(BuildContext context, {VoidCallback? onPop}) {
  return showUiKitAlertDialog(
    context,
    AlertDialogData(
      actions: [
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: context.dialogButton(
                data: BaseUiKitButtonData(
                  onPressed: onPop ?? () => context.pop(),
                  text: 'okay, cool!',
                ),
                dialogButtonType: DialogButtonType.buttonBlack,
              ),
            ),
          ],
        ),
      ],
      content: Text(
        'We will let you know the results',
        textAlign: TextAlign.center,
        style: context.uiKitTheme?.boldTextTheme.body.copyWith(
          color: context.uiKitTheme?.colorScheme.primary,
        ),
      ),
      title: Text(
        'Your claim has been sent',
        style: context.uiKitTheme?.boldTextTheme.title2.copyWith(
          color: context.uiKitTheme?.colorScheme.primary,
        ),
        textAlign: TextAlign.center,
      ),
      defaultButtonText: '',
    ),
  );
}
