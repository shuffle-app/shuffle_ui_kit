import 'package:flutter/material.dart';
import 'package:shuffle_uikit/ui_kit_external.dart';

class TitledAccentInfo extends StatelessWidget {
  final String title;
  final String info;

  const TitledAccentInfo({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = context.uiKitTheme?.boldTextTheme.caption1Medium.copyWith(
      color: ColorsFoundation.darkNeutral900,
    );
    final infoStyle = context.uiKitTheme?.boldTextTheme.title2;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        Text(
          info,
          style: infoStyle,
        ),
      ],
    );
  }
}
