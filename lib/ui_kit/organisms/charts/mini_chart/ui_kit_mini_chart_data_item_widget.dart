import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';
import 'package:shuffle_uikit/utils/extentions/mini_chart_extension.dart';

class UiKitMiniChartDataItemWidget extends StatelessWidget {
  final UiKitMiniChartData data;

  const UiKitMiniChartDataItemWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boldTextTheme = context.uiKitTheme?.boldTextTheme;

    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: boldTextTheme?.caption2Medium.copyWith(color: ColorsFoundation.mutedText),
              ),
              SpacingFoundation.verticalSpace4,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${data.value.toStringAsFixed(0)}${data.valueMetricsName ?? ''}',
                    style: boldTextTheme?.body,
                  ),
                  SpacingFoundation.horizontalSpace4,
                  ImageWidget(
                    svgAsset: data.progress.isNegative
                        ? GraphicsFoundation.instance.svg.trendDown
                        : GraphicsFoundation.instance.svg.trendUp,
                    color: data.progress.isNegative ? ColorsFoundation.error : ColorsFoundation.success,
                  ),
                  SpacingFoundation.horizontalSpace2,
                  Text(
                    '${data.progress.toStringAsFixed(2)}%',
                    style: boldTextTheme?.caption2Medium.copyWith(
                      color: data.progress.isNegative ? ColorsFoundation.error : ColorsFoundation.success,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SpacingFoundation.horizontalSpace16,
        Expanded(
          flex: 6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${formatDateWithCustomPattern('MMM dd', data.items.period.start, locale: Localizations.localeOf(context).languageCode)}'
                ' - '
                '${formatDateWithCustomPattern('MMM dd', data.items.period.end, locale: Localizations.localeOf(context).languageCode)}',
                style: boldTextTheme?.caption2Medium.copyWith(color: ColorsFoundation.mutedText),
              ),
              SpacingFoundation.verticalSpace4,
              ClipPath(
                clipper: MiniChartClipper(data: data.items),
                child: Container(
                  height: 0.05.sh,
                  width: 0.5.sw,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.5, 0.85, 1],
                      colors: [
                        data.color.withOpacity(0.5),
                        data.color.withOpacity(0.15),
                        data.color.withOpacity(0.05),
                      ],
                    ),
                  ),
                  child: CustomPaint(
                    painter: UiKitMiniChartPainter(data: data.items, color: data.color),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
