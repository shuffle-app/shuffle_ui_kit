import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shuffle_uikit/ui_models/charts/pie_chart_data.dart';
import 'package:shuffle_uikit/utils/extentions/pie_chart_extensions.dart';

class UiKitPieChartPainter extends CustomPainter {
  final List<UiKitPieCharItemData> data;

  UiKitPieChartPainter({
    required this.data,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 16.0;
    final diameter = min(size.width - strokeWidth, size.height - strokeWidth);
    final radius = diameter / 2;
    double startAngle = -pi / 2;

    for (final item in data) {
      final sweepAngle = (item.value / data.sum) * 2 * pi;

      final paint = Paint()
        ..color = item.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;
      canvas.drawArc(
        Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(UiKitPieChartPainter oldDelegate) => data != oldDelegate.data;
}
