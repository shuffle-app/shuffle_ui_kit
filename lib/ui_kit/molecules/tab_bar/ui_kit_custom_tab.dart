import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UiKitCustomTab extends StatelessWidget {
  final String title;
  final double height;
  final AutoSizeGroup? group;

  const UiKitCustomTab({
    Key? key,
    required this.title,
    this.height = 40,
    this.group,
  }) : super(key: key);

  factory UiKitCustomTab.small({
    required String title,
    double height = 24,
    AutoSizeGroup? group,
  }) =>
      UiKitCustomTab(
        title: title,
        height: height,
        group: group,
      );

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: height,
      child: Center(
        child: group != null
            ? AutoSizeText(
                title,
                maxLines: 1,
                group: group,
              )
            : Text(title),
      ),
    );
  }
}
