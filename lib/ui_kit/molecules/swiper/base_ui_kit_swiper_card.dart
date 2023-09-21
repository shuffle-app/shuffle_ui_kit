import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

abstract class BaseUiKitSwiperCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageLink;
  final List<UiKitTagWidget> tags;
  final bool? isOpen;
  final VoidCallback? onTap;

  const BaseUiKitSwiperCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.tags,
    this.imageLink,
    this.isOpen,
    this.onTap,
  }) : super(key: key);
}
