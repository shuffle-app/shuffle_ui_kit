import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';
import 'package:shuffle_uikit/ui_kit/consts.dart';

class ProfileInfo extends StatelessWidget {
  final String nickname;
  final int followers;

  const ProfileInfo({
    Key? key,
    required this.nickname,
    required this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        final boldTextTheme = Theme.of(context).extension<UiKitThemeData>()?.boldTextTheme;
        TextStyle? nickNameStyle;
        TextStyle? followersCountStyle;
        if (width <= kSmallestScreen) {
          nickNameStyle = boldTextTheme?.caption1.copyWith(
            color: Colors.white,
          );
          followersCountStyle = boldTextTheme?.bodyUpperCase.copyWith(
            color: Colors.white,
          );
        } else {
          nickNameStyle = boldTextTheme?.bodyUpperCase.copyWith(
            color: Colors.white,
          );
          followersCountStyle = boldTextTheme?.title2.copyWith(
            color: Colors.white,
          );
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: nickname,
                    style: nickNameStyle,
                  ),
                  TextSpan(
                    text: '\nFollowers\n',
                    style: boldTextTheme?.caption1Medium.copyWith(
                      color: ColorsFoundation.solidGreyText,
                    ),
                  ),
                  TextSpan(
                    text: '2 650',
                    style: followersCountStyle,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SpacingFoundation.verticalSpace12,
            GeneralPurposeButton(
              text: 'FOLLOW',
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
