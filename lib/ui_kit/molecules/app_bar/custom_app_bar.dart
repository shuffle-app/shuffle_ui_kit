import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final bool centerTitle;
  final bool? autoImplyLeading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.autoImplyLeading,
    super.preferredSize = const Size(double.infinity, 84),
  }) : super(child: const SizedBox());

  @override
  Widget build(BuildContext context) {
    final showLeading = autoImplyLeading ?? context.canPop();
    return ClipRRect(
      borderRadius: BorderRadiusFoundation.onlyBottom24,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: Container(
          width: preferredSize.width,
          height: preferredSize.height + MediaQuery.of(context).padding.top,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.07),
            borderRadius: BorderRadiusFoundation.onlyBottom24,
          ),
          padding: const EdgeInsets.all(16),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (showLeading) const AppBarBackButton(),
                  if (showLeading && !centerTitle) SpacingFoundation.horizontalSpace8,
                  AppBarTitle(
                    title: title,
                    centerTitle: centerTitle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
