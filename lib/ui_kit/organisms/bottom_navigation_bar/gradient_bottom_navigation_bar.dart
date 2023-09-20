import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';
import 'package:tabnavigator/tabnavigator.dart';

class GradientBottomNavigationBar extends StatelessWidget {
  final List<GradientBottomNavigationBarItem> items;
  final GradientBottomNavigationBarController controller;

  GradientBottomNavigationBar({
    Key? key,
    required this.items,
    required this.controller,
  })  : assert(controller.tabItemsCount == items.length),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TabType>(
      stream: controller.tabStream,
      builder: (context, snapshot) {
        final index = snapshot.data?.value ?? 0;

        return Container(
          height: kBottomNavigationBarHeight.h,
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            gradient: GradientFoundation.blackLinearGradient,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map((e) {
              final elementIndex = items.indexOf(e);
              final selected = index == elementIndex;

              return Expanded(
                child: GestureDetector(
                  onTap: () => controller.changeTab(e),
                  behavior: HitTestBehavior.opaque,
                  child: NavBarTile(
                    icon: selected ? e.selectedIcon : e.unselectedIcon,
                    selected: selected,
                  ),
                ),
              );
            }).toList(),
          ).paddingSymmetric(
            vertical: EdgeInsetsFoundation.vertical8,
            horizontal: EdgeInsetsFoundation.horizontal20,
          ),
        );
      },
    );
  }
}

class GradientBottomNavigationBarItem extends TabType {
  static final home = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.homeFill,
    unselectedIcon: GraphicsFoundation.instance.svg.homeOutline,
    index: 0,
  );
  static final spinner = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.spinnerFill,
    unselectedIcon: GraphicsFoundation.instance.svg.spinnerOutline,
    index: 1,
  );
  static final docs = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.docsFill,
    unselectedIcon: GraphicsFoundation.instance.svg.docsOutline,
    index: 1,
  );
  static final shuffle = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.shuffleFill,
    unselectedIcon: GraphicsFoundation.instance.svg.shuffleOutline,
    index: 2,
  );
  static final analytics = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.analyticsFill,
    unselectedIcon: GraphicsFoundation.instance.svg.analyticsOutline,
    index: 2,
  );
  static final search = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.searchFill,
    unselectedIcon: GraphicsFoundation.instance.svg.searchOutline,
    index: 3,
  );
  static final connection = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.connectionFill,
    unselectedIcon: GraphicsFoundation.instance.svg.connectionOutline,
    index: 3,
  );
  static final profile = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.profileFill,
    unselectedIcon: GraphicsFoundation.instance.svg.profileOutline,
    index: 4,
  );
  static final settings = GradientBottomNavigationBarItem._(
    selectedIcon: GraphicsFoundation.instance.svg.settingsFill,
    unselectedIcon: GraphicsFoundation.instance.svg.settingsOutline,
    index: 4,
  );

  final SvgGenImage selectedIcon;
  final SvgGenImage unselectedIcon;

  GradientBottomNavigationBarItem._({
    required this.selectedIcon,
    required this.unselectedIcon,
    required int index,
  }) : super(index);
}

class GradientBottomNavigationBarController {
  /// Состояние таббара
  GlobalKey<TabNavigatorState> tabState;

  final int tabItemsCount;
  final BehaviorSubject<GradientBottomNavigationBarItem> _changeController = BehaviorSubject<GradientBottomNavigationBarItem>();
  final BehaviorSubject<GradientBottomNavigationBarVisibility> _visibilityController =
      BehaviorSubject<GradientBottomNavigationBarVisibility>.seeded(GradientBottomNavigationBarVisibility.visible);

  Stream<TabType> get tabStream => _changeController.stream;

  Stream<GradientBottomNavigationBarVisibility> get visibilityStream => _visibilityController.stream;

  GradientBottomNavigationBarItem? get selectedTabState => _changeController.valueOrNull;

  GradientBottomNavigationBarController({required this.tabItemsCount, GlobalKey<TabNavigatorState>? tabState})
      : tabState = tabState ?? GlobalKey<TabNavigatorState>();

  void hideBottomNavigationBar() => _visibilityController.add(GradientBottomNavigationBarVisibility.hidden);

  void showBottomNavigationBar() => _visibilityController.add(GradientBottomNavigationBarVisibility.visible);

  void changeTab(GradientBottomNavigationBarItem item) => _openTab(item);

  void dispose() {
    _changeController.close();
    _visibilityController.close();
    tabState.currentState?.dispose();
  }

  Future<void> _openTab(GradientBottomNavigationBarItem item) async {
    final _isTappedTabSelectedAlready = selectedTabState == item;

    // Если нажатый таб уже выбран
    // удаляем другие страницы, оставляем только первую страницу
    if (_isTappedTabSelectedAlready && await _isNotLastPage(item)) {
      tabState.currentState?.mappedNavKeys[item]?.currentState?.popUntil((route) => route.isFirst);
    } else {
      _changeController.add(item);
    }
  }

  /// Возвращает true если имеет дочерние можно вернуться назад
  Future<bool> _isNotLastPage(GradientBottomNavigationBarItem selectedTab) async =>
      await tabState.currentState?.mappedNavKeys[selectedTab]?.currentState?.maybePop() ?? false;
}

enum GradientBottomNavigationBarVisibility { visible, hidden }
