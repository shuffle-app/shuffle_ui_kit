import 'package:flutter/material.dart';
import 'package:shuffle_uikit/foundation/foundation.dart';
import 'package:shuffle_uikit/ui_kit/molecules/profile/profile_attitude_tab.dart';

class ProfileAttitudeTabs extends StatelessWidget {
  final List<ProfileAttitudeTab> tabs;

  const ProfileAttitudeTabs({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      padding: UiKitEdgeInsets.all4,
      child: DefaultTabController(
        length: tabs.length,
        child: ClipRRect(
          borderRadius: UiKitBorderRadius.max,
          child: TabBar(
            tabs: tabs,
          ),
        ),
      ),
    );
  }
}
