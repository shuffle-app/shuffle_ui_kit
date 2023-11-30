import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitCustomTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final ValueChanged<int> onTappedTab;
  final String? selectedTab;
  final TabController? tabController;
  final BorderRadius clipBorderRadius;

  const UiKitCustomTabBar({
    Key? key,
    required this.tabs,
    required this.onTappedTab,
    this.selectedTab,
    this.tabController,
    this.clipBorderRadius = const BorderRadius.all(Radius.circular(9999)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabStyle = context.uiKitTheme?.boldTextTheme.body;
    final tabBarTheme = context.uiKitTheme?.uiKitTabBarTheme.copyWith(
      unselectedLabelStyle: tabStyle?.copyWith(color: Colors.white),
      labelStyle: tabStyle,
    );

    final initialTab = tabs.indexWhere((element) => element is UiKitCustomTab && element.title == selectedTab);

    return Theme(
      data: Theme.of(context).copyWith(tabBarTheme: tabBarTheme),
      child: UiKitCardWrapper(
        child: DefaultTabController(
          animationDuration: const Duration(milliseconds: 250),
          length: tabs.length,
          initialIndex: initialTab.isNegative ? 0 : initialTab,
          child: ClipRRect(
            borderRadius: BorderRadiusFoundation.max,
            child: TabBar(
              controller: tabController,
              enableFeedback: true,
              splashBorderRadius: clipBorderRadius,
              splashFactory: NoSplash.splashFactory,
              onTap: onTappedTab,
              tabs: tabs,
            ),
          ),
        ).paddingAll(EdgeInsetsFoundation.all4),
      ),
    );
  }
}
