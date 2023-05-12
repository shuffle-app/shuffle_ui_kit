import 'package:flutter/material.dart';
import 'package:shuffle_uikit/foundation/gradient_foundation.dart';
import 'package:shuffle_uikit/ui_kit/atoms/profile/ui_kit_chip.dart';

class ProfileInterests extends StatelessWidget {
  final List<String> profileInterests;
  final List<String> userInterests;

  const ProfileInterests({
    Key? key,
    required this.profileInterests,
    required this.userInterests,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final interest in profileInterests)
          UiKitChip(
            interest: interest,
            isSelected: userInterests.contains(interest),
            border: profileInterests.indexOf(interest) == 0 ? GradientFoundation.gradientBorder : null,
          ),
      ],
    );
  }
}
