import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';
import 'package:auto_size_text/auto_size_text.dart';

class UiKitSelectDateWidget extends StatelessWidget {
  final List<DateTime?>? selectedDates;
  final bool dateToWord;
  final VoidCallback? onCalenderTap;
  final bool Function(DateTime)? selectableDayPredicate;

  const UiKitSelectDateWidget({
    super.key,
    this.selectedDates,
    this.dateToWord = false,
    this.onCalenderTap,
    this.selectableDayPredicate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final title = _formatDateRange(selectedDates, dateToWord, context, selectableDayPredicate);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: AutoSizeText(
            title,
            style: selectedDates != null && selectedDates!.first != null
                ? theme?.boldTextTheme.body
                : theme?.boldTextTheme.body.copyWith(color: ColorsFoundation.error),
            maxLines: 1,
          ),
        ),
        SpacingFoundation.horizontalSpace12,
        context.outlinedButton(
          padding: EdgeInsets.all(EdgeInsetsFoundation.all12),
          data: BaseUiKitButtonData(
            iconInfo: BaseUiKitButtonIconData(iconData: ShuffleUiKitIcons.calendar),
            onPressed: onCalenderTap,
          ),
        )
      ],
    );
  }
}

String _formatDateRange(
  List<DateTime?>? selectedDates,
  bool dateToWord,
  BuildContext context,
  bool Function(DateTime)? selectableDayPredicate,
) {
  final List<DateTime> generateDateList = generateDateRange(selectedDates);
  if (generateDateList.isEmpty) return S.of(context).PleaseAddDatePeriod;

  if (selectableDayPredicate != null && !generateDateList.any((element) => selectableDayPredicate(element))) {
    return S.of(context).PleaseAddDatePeriod;
  }

  final firstDate = generateDateList[0];
  final firstDateFormatted = dateToWord
      ? formatDateWithCustomPattern('MMMM d', firstDate.toLocal()).capitalize()
      : formatDateWithCustomPattern('dd.MM.yyyy', firstDate.toLocal());

  if (generateDateList.length > 1) {
    final secondDate = generateDateList.last;
    final secondDateFormatted = dateToWord
        ? (secondDate.month == firstDate.month)
            ? formatDateWithCustomPattern('MMMM dd', secondDate.toLocal())
            : (secondDate.year != firstDate.year)
                ? formatDateWithCustomPattern('dd.MM.yyyy', secondDate.toLocal())
                : formatDateWithCustomPattern('MMMM dd', secondDate.toLocal())
        : formatDateWithCustomPattern('dd.MM.yyyy', secondDate.toLocal());

    return '$firstDateFormatted - $secondDateFormatted';
  }

  return firstDateFormatted;
}

List<DateTime> generateDateRange(List<DateTime?>? selectedDates) {
  if (selectedDates == null) {
    return [];
  } else if (selectedDates.length != 2 && selectedDates.first != null) {
    return [selectedDates.first!];
  } else if (selectedDates.length != 2) {
    return [];
  }

  final startDate = selectedDates[0];
  final endDate = selectedDates[1];

  if (startDate == null || endDate == null) {
    return [];
  }

  final dateRange = <DateTime>[];

  DateTime currentDate = DateTime(startDate.year, startDate.month, startDate.day);

  while (currentDate.isBefore(endDate) || currentDate.isAtSameMomentAs(endDate)) {
    dateRange.add(DateTime(currentDate.year, currentDate.month, currentDate.day));
    currentDate = currentDate.add(const Duration(days: 1));
  }

  return dateRange;
}
