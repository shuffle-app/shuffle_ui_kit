import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitContentUpdatesCard extends StatelessWidget {
  final List<UiKitContentUpdateWidget> children;
  final String authorSpeciality;
  final String authorName;
  final String authorUsername;
  final String authorAvatarUrl;
  final UserTileType authorUserType;
  final bool hasGradientBorder;
  final String? comment;
  final bool hasReactions;
  final int? heartEyesReactionsCount;
  final int? likeReactionsCount;
  final int? fireReactionsCount;
  final int? sunglassesReactionsCount;
  final int? smileyReactionsCount;
  final ValueChanged<String>? onReactionsTapped;
  final VoidCallback? onLongPress;

  bool get showEmptyReactionsState =>
      heartCount == 0 && likeCount == 0 && sunglassesCount == 0 && fireCount == 0 && smileyCount == 0;

  const UiKitContentUpdatesCard({
    super.key,
    required this.children,
    required this.authorSpeciality,
    required this.authorName,
    required this.authorUsername,
    required this.authorAvatarUrl,
    required this.authorUserType,
    this.comment,
    this.hasGradientBorder = false,
    this.hasReactions = false,
    this.heartEyesReactionsCount,
    this.likeReactionsCount,
    this.fireReactionsCount,
    this.sunglassesReactionsCount,
    this.smileyReactionsCount,
    this.onReactionsTapped,
    this.onLongPress,
  });

  factory UiKitContentUpdatesCard.fromShuffle({
    required List<UiKitContentUpdateWidget> children,
    required String text,
    ValueChanged<String>? onReactionsTapped,
    VoidCallback? onLongPress,
    int? heartEyesReactionsCount,
    int? likeReactionsCount,
    int? fireReactionsCount,
    int? sunglassesReactionsCount,
    int? smileyReactionsCount,
  }) =>
      UiKitContentUpdatesCard(
        authorSpeciality: '',
        authorUserType: UserTileType.influencer,
        authorName: 'Shuffle',
        authorUsername: '',
        authorAvatarUrl: GraphicsFoundation.instance.png.avatars.avatar13.path,
        hasGradientBorder: true,
        hasReactions: true,
        comment: text,
        heartEyesReactionsCount: heartEyesReactionsCount,
        likeReactionsCount: likeReactionsCount,
        fireReactionsCount: fireReactionsCount,
        sunglassesReactionsCount: sunglassesReactionsCount,
        smileyReactionsCount: smileyReactionsCount,
        onReactionsTapped: onReactionsTapped,
        onLongPress: onLongPress,
        children: children,
      );

  double get overallHeight {
    double additionalSpacingForComment = 0;
    double reactionsSpacing = 0;
    if (hasGradientBorder && comment != null) {
      final linesCount = comment!.length ~/ charactersPerLine;
      additionalSpacingForComment += linesCount * (kIsWeb ? 15 : 13.5.h);
    }
    if (hasReactions) reactionsSpacing += SpacingFoundation.verticalSpacing8 + SpacingFoundation.verticalSpacing20;

    return children.fold(0.0, (previousValue, element) => previousValue + element.height) +
        ((children.length + 2) * SpacingFoundation.verticalSpacing16) +
        (kIsWeb ? 17 : 0.152.sw) +
        EdgeInsetsFoundation.vertical24 +
        reactionsSpacing +
        additionalSpacingForComment;
  }

  int get heartCount => heartEyesReactionsCount ?? 0;

  int get likeCount => likeReactionsCount ?? 0;

  int get fireCount => fireReactionsCount ?? 0;

  int get sunglassesCount => sunglassesReactionsCount ?? 0;

  int get smileyCount => smileyReactionsCount ?? 0;

  int get charactersPerLine => 1.sw > 380 ? 35 : 30;

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final boldTextTheme = theme?.boldTextTheme;
    final regularTextTheme = theme?.regularTextTheme;
    final colorScheme = theme?.colorScheme;
    final reactionTextColor = colorScheme?.bodyTypography;
    final isLightTheme = theme?.themeMode == ThemeMode.light;

    bool isOverlayVisible = false;
    OverlayEntry? overlayEntry;

    debugPrint('updates card build here and overallHeight: $overallHeight');

    return GestureDetector(
      onLongPress: onLongPress,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: kIsWeb ? 60 : 1.sw - EdgeInsetsFoundation.horizontal32,
          maxWidth: kIsWeb ? 90 : 1.sw,
          maxHeight: overallHeight,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            Container(
              width: kIsWeb ? 90 : 1.sw,
              height: overallHeight,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: isLightTheme ? colorScheme?.surface2 : null,
                gradient: isLightTheme ? null : GradientFoundation.shunyGreyGradientInverted,
                borderRadius: BorderRadiusFoundation.all24,
                border: hasGradientBorder ? GradientFoundation.touchIdgradientBorder : null,
              ),
              child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50)),
            ),
            if (hasGradientBorder)
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: kIsWeb ? 90 : 1.sw,
                    child: const UiKitShuffleTile(),
                  ),
                  if (hasGradientBorder && comment != null && comment!.isNotEmpty)
                    Text(
                      comment!,
                      style: regularTextTheme?.caption2,
                      textAlign: TextAlign.start,
                    ).paddingOnly(top: EdgeInsetsFoundation.vertical16),
                  if (children.isNotEmpty) ...[
                    SpacingFoundation.verticalSpace4,
                    ...children.map((child) {
                      final isLastChild = children.indexOf(child) == children.length - 1;

                      if (!isLastChild) return child.paddingOnly(bottom: EdgeInsetsFoundation.vertical16);
                      return child;
                    }),
                    SpacingFoundation.verticalSpace8,
                  ],
                  if (hasReactions)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        showEmptyReactionsState
                            ? Builder(
                                builder: (c) => TapRegion(
                                  behavior: HitTestBehavior.opaque,
                                  onTapInside: (value) {
                                    if (onReactionsTapped != null) {
                                      isOverlayVisible
                                          ? hideReactionOverlay(overlayEntry)
                                          : showReactionOverlay(
                                              c,
                                              overlayEntry,
                                              reactionTextColor,
                                              onReactionsTapped,
                                            );
                                      isOverlayVisible = !isOverlayVisible;
                                    }
                                  },
                                  onTapOutside: (event) {
                                    isOverlayVisible = false;
                                    hideReactionOverlay(overlayEntry);
                                  },
                                  child: const ImageWidget(
                                    iconData: ShuffleUiKitIcons.thumbup,
                                    color: ColorsFoundation.mutedText,
                                  ),
                                ),
                              )
                            : Builder(
                                builder: (c) => TapRegion(
                                  behavior: HitTestBehavior.opaque,
                                  onTapInside: (value) {
                                    isOverlayVisible
                                        ? hideReactionOverlay(overlayEntry)
                                        : showReactionOverlay(
                                            c,
                                            overlayEntry,
                                            reactionTextColor,
                                            onReactionsTapped,
                                          );
                                    isOverlayVisible = !isOverlayVisible;
                                  },
                                  onTapOutside: (event) {
                                    isOverlayVisible = false;
                                    hideReactionOverlay(overlayEntry);
                                  },
                                  child: Row(
                                    children: [
                                      if (heartCount != 0)
                                        UiKitHeartEyesReaction(
                                          reactionsCount: heartCount,
                                          textColor: reactionTextColor,
                                        ),
                                      if (likeCount != 0) ...[
                                        SpacingFoundation.horizontalSpace4,
                                        UiKitLikeReaction(
                                          reactionsCount: likeCount,
                                          textColor: reactionTextColor,
                                        )
                                      ],
                                      if (fireCount != 0) ...[
                                        SpacingFoundation.horizontalSpace4,
                                        UiKitFireReaction(
                                          reactionsCount: fireCount,
                                          textColor: reactionTextColor,
                                        )
                                      ],
                                      if (sunglassesCount != 0) ...[
                                        SpacingFoundation.horizontalSpace4,
                                        UiKitSunglassesReaction(
                                          reactionsCount: sunglassesCount,
                                          textColor: reactionTextColor,
                                        )
                                      ],
                                      if (smileyCount != 0) ...[
                                        SpacingFoundation.horizontalSpace4,
                                        UiKitSmileyReaction(
                                          reactionsCount: smileyCount,
                                          textColor: reactionTextColor,
                                        )
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    )
                ],
              ).paddingAll(EdgeInsetsFoundation.all16),
            if (!hasGradientBorder)
              Column(
                children: [
                  context.userTile(
                    data: BaseUiKitUserTileData(
                      name: authorName,
                      username: authorUsername,
                      avatarUrl: authorAvatarUrl,
                      type: authorUserType,
                      noMaterialOverlay: true,
                    ),
                  ),
                  SpacingFoundation.verticalSpace8,
                  ...children.map((child) {
                    final isLastChild = children.indexOf(child) == children.length - 1;

                    if (!isLastChild) return child.paddingOnly(bottom: EdgeInsetsFoundation.vertical16);
                    return child;
                  }),
                ],
              ).paddingAll(EdgeInsetsFoundation.all16),
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
              ),
          ],
        ),
      ),
    );
  }
}
