import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';
import 'package:shuffle_uikit/ui_kit/atoms/cards/digest_content_card.dart';

class UiKitDigestCard extends StatelessWidget {
  final String? title;
  final String? underTitleText;
  final List<DigestUiModel>? digestUiModels;
  final VoidCallback? onReadTap;
  final ValueChanged<String>? onReactionsTapped;
  final String createdAt;

  final int? heartEyesReactionsCount;
  final int? likeReactionsCount;
  final int? fireReactionsCount;
  final int? sunglassesReactionsCount;
  final int? smileyReactionsCount;

  final ValueNotifier<bool>? showTranslateButton;
  final ValueNotifier<String>? titleTranslateText;
  final ValueNotifier<String>? underTitleTranslateText;

  late final ValueNotifier<String> titleNotifier;
  late final ValueNotifier<String> underTitleNotifier;
  late final ValueNotifier<bool> isTranslate;

  late final DigestUiModel? digestUiModel;

  final bool isPinned;

  UiKitDigestCard({
    super.key,
    this.title,
    this.underTitleText,
    this.digestUiModels,
    this.onReadTap,
    this.heartEyesReactionsCount,
    this.likeReactionsCount,
    this.fireReactionsCount,
    this.sunglassesReactionsCount,
    this.smileyReactionsCount,
    this.onReactionsTapped,
    this.createdAt = '',
    this.showTranslateButton,
    this.titleTranslateText,
    this.underTitleTranslateText,
    this.isPinned = false,
  }) {
    digestUiModel = digestUiModels != null && digestUiModels!.isNotEmpty ? digestUiModels![0] : null;

    titleNotifier = ValueNotifier<String>(title ?? '');
    underTitleNotifier = ValueNotifier<String>(underTitleText ?? '');

    isTranslate = ValueNotifier<bool>(false);
  }

  int get heartCount => heartEyesReactionsCount ?? 0;

  int get likeCount => likeReactionsCount ?? 0;

  int get fireCount => fireReactionsCount ?? 0;

  int get sunglassesCount => sunglassesReactionsCount ?? 0;

  int get smileyCount => smileyReactionsCount ?? 0;

  bool get showEmptyReactionsState =>
      heartCount == 0 && likeCount == 0 && sunglassesCount == 0 && fireCount == 0 && smileyCount == 0;

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final boldTextTheme = theme?.boldTextTheme;
    final regularTextTheme = theme?.regularTextTheme;
    final colorScheme = theme?.colorScheme;
    final isLightTheme = theme?.themeMode == ThemeMode.light;
    final reactionTextColor = colorScheme?.bodyTypography;

    bool isOverlayVisible = false;
    OverlayEntry? overlayEntry;

    void toggleTranslation() {
      isTranslate.value = !isTranslate.value;

      ///Translate in publication
      titleNotifier.value = isTranslate.value ? (titleTranslateText?.value ?? title ?? '') : title ?? '';
      underTitleNotifier.value =
          isTranslate.value ? (underTitleTranslateText?.value ?? underTitleText ?? '') : underTitleText ?? '';

      ///Translate in content card
      digestUiModel?.contentDescriptionNotifier?.value = isTranslate.value
          ? (digestUiModel?.contentDescriptionTranslate?.value ?? digestUiModel?.contentDescription ?? '')
          : digestUiModel?.contentDescription ?? '';

      digestUiModel?.descriptionNotifier?.value = isTranslate.value
          ? (digestUiModel?.descriptionTranslate?.value ?? digestUiModel?.description ?? '')
          : digestUiModel?.description ?? '';
    }

    _children() {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: kIsWeb ? 90 : 1.sw,
            child: UiKitShuffleTile(
              trailing: Row(
                children: [
                  if (isPinned && kIsWeb)
                    ImageWidget(
                      link: GraphicsFoundation.instance.svg.pinned.path,
                      height: 18,
                      width: 18,
                      fit: BoxFit.fill,
                      color: ColorsFoundation.mutedText,
                    ).paddingOnly(right: SpacingFoundation.horizontalSpacing20),
                ],
              ),
            ),
          ),
          if (title != null && title!.isNotEmpty)
            ValueListenableBuilder<String>(
              valueListenable: titleNotifier,
              builder: (_, title, __) => Text(
                title,
                style: boldTextTheme?.caption1Bold,
                textAlign: TextAlign.start,
              ).paddingOnly(top: SpacingFoundation.verticalSpacing12),
            ),
          if (underTitleText != null && underTitleText!.isNotEmpty)
            ValueListenableBuilder<String>(
              valueListenable: underTitleNotifier,
              builder: (_, underTitleText, __) => Text(
                underTitleText,
                style: regularTextTheme?.caption1,
                textAlign: TextAlign.start,
              ).paddingOnly(top: SpacingFoundation.verticalSpacing12),
            ),
          SpacingFoundation.verticalSpace12,
          if (digestUiModel != null)
            DigestContentCard(
              digestUiModel: digestUiModel,
            ),
          if (digestUiModel?.descriptionNotifier != null && digestUiModel!.descriptionNotifier!.value.isNotEmpty)
            ValueListenableBuilder<String>(
              valueListenable: digestUiModel!.descriptionNotifier!,
              builder: (_, underTitleText, __) => Text(
                underTitleText,
                style: regularTextTheme?.caption2,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ).paddingOnly(top: SpacingFoundation.verticalSpacing8),
            ),
          SpacingFoundation.verticalSpace12,
          GradientableWidget(
            gradient: GradientFoundation.buttonGradient,
            child: context.smallOutlinedButton(
              data: BaseUiKitButtonData(
                text: S.of(context).Read(''),
                onPressed: onReadTap,
              ),
            ),
          ),
          SpacingFoundation.verticalSpace12,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (createdAt.isNotEmpty)
                UiKitCardWrapper(
                  color: colorScheme?.darkNeutral900,
                  borderRadius: BorderRadiusFoundation.max,
                  padding: EdgeInsets.symmetric(
                    horizontal: SpacingFoundation.horizontalSpacing4,
                    vertical: SpacingFoundation.verticalSpacing2,
                  ),
                  child: Text(
                    createdAt,
                    style: regularTextTheme?.caption4,
                  ),
                )
              else
                const SizedBox.shrink(),
              if (showTranslateButton != null)
                ValueListenableBuilder<bool>(
                  valueListenable: isTranslate,
                  builder: (_, isTranslating, __) => InkWell(
                    onTap: toggleTranslation,
                    child: showTranslateButton!.value
                        ? Text(
                            isTranslating ? S.of(context).Original : S.of(context).Translate,
                            style: context.uiKitTheme?.regularTextTheme.caption4Regular.copyWith(
                              color: isLightTheme ? ColorsFoundation.darkNeutral700 : ColorsFoundation.darkNeutral300,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
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
          ),
        ],
      ).paddingAll(EdgeInsetsFoundation.all16);
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: kIsWeb ? 60 : 1.sw - EdgeInsetsFoundation.horizontal32,
        maxWidth: kIsWeb ? 90 : 1.sw,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusFoundation.all24,
            clipBehavior: Clip.hardEdge,
            child: DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                color: isLightTheme ? colorScheme?.surface2 : null,
                gradient: isLightTheme ? null : GradientFoundation.digestCardGradient,
                borderRadius: BorderRadiusFoundation.all24,
                border: GradientFoundation.touchIdgradientBorder,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                child: IgnorePointer(
                  child: Opacity(
                    opacity: 0,
                    child: _children(),
                  ),
                ),
              ),
            ),
          ),
          _children(),
        ],
      ),
    );
  }
}
