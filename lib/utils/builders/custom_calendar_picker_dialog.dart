import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

Future<DateTime?> showUiKitCalendarDialog(
  BuildContext context, {
  DateTime? lastDate,
}) {
  return showDialog<DateTime?>(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: context.uiKitTheme?.cardColor,
      clipBehavior: Clip.hardEdge,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusFoundation.all24,
      ),
      child: _CustomCalendarPickerDialog(
        lastDate: lastDate,
      ),
    ),
  );
}

class _CustomCalendarPickerDialog extends StatefulWidget {
  final DateTime? lastDate;

  const _CustomCalendarPickerDialog({Key? key, this.lastDate})
      : super(key: key);

  @override
  State<_CustomCalendarPickerDialog> createState() =>
      _CustomCalendarPickerDialogState();
}

class _CustomCalendarPickerDialogState
    extends State<_CustomCalendarPickerDialog> {
  DateTime selectedDate = DateTime.now();

  _onSelectionChanged(DateTime selected) {
    setState(() {
      selectedDate = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: kIsWeb ? BoxConstraints.loose(SizesFoundation.webCalendarPopupSize)
         : BoxConstraints.loose(SizesFoundation.standartCalendarPopupSize),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //TODO romancores or Murodkulov: add theming
          CalendarDatePicker(
            onDateChanged: _onSelectionChanged,
            initialDate: selectedDate,
            firstDate: DateTime.now().subtract(Duration(days:365)),
            lastDate: widget.lastDate ??
                DateTime.now().add(const Duration(days: 365)),
          ),
          SpacingFoundation.horizontalSpace16,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if(kIsWeb)...[
                context.button(
                    data: BaseUiKitButtonData(
                        text: 'remove', onPressed: () => context.pop(result: DateTime.fromMicrosecondsSinceEpoch(0))),
                    isTextButton: true),
                SpacingFoundation.horizontalSpace4,
              ],
              //TODO check if this is link in design - outlined
              context.button(
                  data: BaseUiKitButtonData(
                      text: 'Cancel', onPressed: () => context.pop()),
                  isTextButton: true),
              SpacingFoundation.horizontalSpace4,
              context.dialogButton(
                dialogButtonType: DialogButtonType.buttonWhite,
                data: BaseUiKitButtonData(
                    text: 'Ok',
                    onPressed: () => context.pop<DateTime>(result: selectedDate)),
                small: true,
              )
            ],
          ),
        ],
      ),
    ).paddingSymmetric(
        vertical: SpacingFoundation.verticalSpacing12,
        horizontal: SpacingFoundation.horizontalSpacing12);
  }
}
