import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class DigestContentCard extends StatelessWidget {
  final DigestUiModel? digestUiModel;
  const DigestContentCard({
    super.key,
    this.digestUiModel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;
    final boldTextTheme = theme?.boldTextTheme;
    final regularTextTheme = theme?.regularTextTheme;
    final colorScheme = theme?.colorScheme;

    return UiKitCardWrapper(
      color: colorScheme?.surface3,
      padding: EdgeInsets.all(EdgeInsetsFoundation.all12),
      borderRadius: BorderRadiusFoundation.all16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusFoundation.all8,
                child: ImageWidget(
                  height: 40.w,
                  width: 50.w,
                  link: digestUiModel?.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SpacingFoundation.horizontalSpace8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (digestUiModel?.title != null && digestUiModel!.title!.isNotEmpty)
                    Text(
                      digestUiModel!.title!,
                      style: boldTextTheme?.caption3Medium,
                    ),
                  SpacingFoundation.verticalSpace4,
                  SizedBox(
                    height: 15.w,
                    width: 170.w,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        if (digestUiModel?.rating != null)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageWidget(
                                iconData: ShuffleUiKitIcons.starfill,
                                color: colorScheme?.inverseSurface,
                                height: 0.040625.sw,
                                width: 0.040625.sw,
                                fit: BoxFit.cover,
                              ),
                              SpacingFoundation.horizontalSpace2,
                              Text(
                                '${digestUiModel!.rating}',
                                style: boldTextTheme?.caption3Medium,
                              ).paddingOnly(top: 2.w),
                              SpacingFoundation.horizontalSpace12,
                            ],
                          ),
                        if (digestUiModel?.tags != null && digestUiModel!.tags!.isNotEmpty)
                          ...digestUiModel!.tags!.map(
                            (e) => UiKitTagWidget(
                              title: e.title,
                              icon: e.icon,
                            ).paddingOnly(right: SpacingFoundation.horizontalSpacing12),
                          ),
                      ],
                    ),
                  )
                ],
              ).paddingSymmetric(vertical: 5.h)
            ],
          ),
          if (digestUiModel?.contentDescriptionNotifier != null &&
              digestUiModel!.contentDescriptionNotifier!.value.isNotEmpty)
            ValueListenableBuilder<String>(
              valueListenable: digestUiModel!.contentDescriptionNotifier!,
              builder: (_, contentDescriptionTranslate, __) => Text(
                contentDescriptionTranslate,
                style: regularTextTheme?.caption4Regular,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).paddingOnly(top: SpacingFoundation.verticalSpacing8),
            ),
        ],
      ),
    );
  }
}