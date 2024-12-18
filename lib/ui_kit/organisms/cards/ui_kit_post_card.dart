import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitPostCard extends StatelessWidget {
  final String authorName;
  final String authorUsername;
  final String authorAvatarUrl;
  final String authorSpeciality;
  final String text;
  final UserTileType authorUserType;
  final int? heartEyesCount;
  final int? likesCount;
  final int? sunglassesCount;
  final int? firesCount;
  final int? smileyCount;
  final bool hasNewMark;
  final ValueChanged<String>? onReactionsTapped;
  final VoidCallback? onLongPress;
  final VoidCallback? onSharePress;
  final String createdAt;
  final ValueNotifier<bool>? showTranslateButton;
  final ValueNotifier<String>? translateText;

  const UiKitPostCard({
    super.key,
    required this.authorName,
    required this.authorUsername,
    required this.authorAvatarUrl,
    required this.authorSpeciality,
    required this.text,
    required this.authorUserType,
    this.heartEyesCount,
    this.likesCount,
    this.sunglassesCount,
    this.firesCount,
    this.smileyCount,
    this.hasNewMark = false,
    this.onReactionsTapped,
    this.onLongPress,
    this.onSharePress,
    this.createdAt = '',
    this.showTranslateButton,
    this.translateText,
  });

  bool get showEmptyReactionsState =>
      (heartEyesCount == 0 && likesCount == 0 && sunglassesCount == 0 && firesCount == 0 && smileyCount == 0) ||
      (heartEyesCount == null &&
          likesCount == null &&
          sunglassesCount == null &&
          firesCount == null &&
          smileyCount == null);

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final boldTextTheme = theme?.boldTextTheme;
    final regularTextTheme = theme?.regularTextTheme;
    final colorScheme = theme?.colorScheme;
    final reactionTextColor = colorScheme?.inverseBodyTypography;
    final isLightTheme = theme?.themeMode == ThemeMode.light;

    final description = ValueNotifier<String>(text);
    final isTranslate = ValueNotifier<bool>(false);

    void toggleTranslation() {
      isTranslate.value = !isTranslate.value;
      description.value = isTranslate.value ? (translateText?.value ?? text) : text;
    }

    return GestureDetector(
      onLongPress: () {
        FeedbackIsolate.instance.addEvent(FeedbackIsolateHaptics(
          intensities: [130, 170],
          pattern: [10, 5],
        ));
        onLongPress?.call();
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: kIsWeb ? 60 : 0.2.sh,
          maxWidth: kIsWeb ? 90 : 1.sw,
          minWidth: kIsWeb ? 60 : 1.sw - EdgeInsetsFoundation.horizontal32,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            UiKitCardWrapper(
              color: colorScheme?.inverseSurface,
              borderRadius: BorderRadiusFoundation.all24,
              padding: EdgeInsets.all(EdgeInsetsFoundation.all16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Expanded(
                      child: context.userTile(
                        data: BaseUiKitUserTileData(
                          avatarUrl: authorAvatarUrl,
                          name: authorName,
                          username: authorUsername,
                          type: authorUserType,
                          showBadge: true,
                          noMaterialOverlay: true,
                          userNameTextColor: colorScheme?.inverseBodyTypography,
                        ),
                      ),
                    ),
                    if (onSharePress != null)
                      context.iconButtonNoPadding(
                        data: BaseUiKitButtonData(
                          onPressed: onSharePress,
                          iconInfo: BaseUiKitButtonIconData(
                            iconData: ShuffleUiKitIcons.share,
                            color: colorScheme?.darkNeutral800,
                          ),
                        ),
                      )
                  ]),
                  SpacingFoundation.verticalSpace8,
                  ValueListenableBuilder<String>(
                    valueListenable: description,
                    builder: (_, desc, __) => Text(
                      desc,
                      style: regularTextTheme?.caption2.copyWith(color: colorScheme?.surface),
                    ),
                  ),
                  SpacingFoundation.verticalSpace8,
                  if (showTranslateButton != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ValueListenableBuilder<bool>(
                          valueListenable: isTranslate,
                          builder: (_, isTranslating, __) => InkWell(
                            onTap: toggleTranslation,
                            child: showTranslateButton!.value
                                ? Text(
                                    isTranslating ? S.of(context).Original : S.of(context).Translate,
                                    style: context.uiKitTheme?.regularTextTheme.caption4Regular.copyWith(
                                      color: isLightTheme
                                          ? ColorsFoundation.darkNeutral700
                                          : ColorsFoundation.darkNeutral300,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ),
                      ],
                    ).paddingOnly(bottom: SpacingFoundation.verticalSpacing8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UiKitCardWrapper(
                        color: colorScheme?.darkNeutral900,
                        borderRadius: BorderRadiusFoundation.max,
                        padding: EdgeInsets.symmetric(
                          horizontal: SpacingFoundation.horizontalSpacing4,
                          vertical: SpacingFoundation.verticalSpacing2,
                        ),
                        child: Text(createdAt, style: regularTextTheme?.caption3),
                      ),
                      showEmptyReactionsState
                          ? const ImageWidget(
                              iconData: ShuffleUiKitIcons.thumbup,
                              color: ColorsFoundation.mutedText,
                            )
                          : Row(
                              children: [
                                if (heartEyesCount != null && heartEyesCount! > 0)
                                  UiKitHeartEyesReaction(
                                    reactionsCount: heartEyesCount!,
                                    textColor: reactionTextColor,
                                  ),
                                if (likesCount != null && likesCount! > 0)
                                  UiKitLikeReaction(
                                    reactionsCount: likesCount!,
                                    textColor: reactionTextColor,
                                  ),
                              ],
                            ),
                    ],
                  ),
                ],
              ),
            ),
            if (hasNewMark)
              Align(
                alignment: Alignment.topRight,
                child: Transform.rotate(
                  angle: -pi / 9,
                  child: UiKitCardWrapper(
                    gradient: GradientFoundation.defaultLinearGradient,
                    child: Text(
                      S.current.New.toLowerCase(),
                      style: boldTextTheme?.caption3Medium.copyWith(color: Colors.black),
                    ).paddingSymmetric(
                      horizontal: EdgeInsetsFoundation.horizontal4,
                      vertical: EdgeInsetsFoundation.vertical2,
                    ),
                  ),
                ).paddingOnly(top: EdgeInsetsFoundation.vertical2),
              ),
            if (authorSpeciality.isNotEmpty)
              Positioned(
                right: 0,
                bottom: -SpacingFoundation.verticalSpacing8,
                child: ClipRRect(
                  borderRadius: BorderRadiusFoundation.max,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                    child: ColoredBox(
                      color: isLightTheme ? ColorsFoundation.darkNeutral300 : ColorsFoundation.neutral16,
                      child: Text(
                        authorSpeciality,
                        style: boldTextTheme?.caption3Medium.copyWith(
                          color: isLightTheme ? colorScheme?.darkNeutral800 : colorScheme?.darkNeutral100,
                        ),
                      ).paddingSymmetric(
                        horizontal: EdgeInsetsFoundation.horizontal8,
                        vertical: EdgeInsetsFoundation.vertical4,
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
