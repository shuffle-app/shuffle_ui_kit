import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitFeedbackCard extends StatelessWidget {
  final String? title;
  final String? avatarUrl;
  final DateTime? datePosted;
  final int? rating;
  final bool? companyAnswered;
  final int? helpfulCount;
  final String? text;
  final VoidCallback? onLike;
  final VoidCallback? onPressed;

  const UiKitFeedbackCard({
    super.key,
    this.title,
    this.avatarUrl,
    this.datePosted,
    this.rating,
    this.companyAnswered,
    this.helpfulCount,
    this.text,
    this.onLike,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final boldTextTheme = context.uiKitTheme?.boldTextTheme;

    return Material(
      color: context.uiKitTheme?.colorScheme.surface3,
      borderRadius: BorderRadiusFoundation.all24,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UiKitHeaderWithLeading(
                title: title ?? '',
                leading: context.userAvatar(
                  size: UserAvatarSize.x40x40,
                  type: UserTileType.ordinary,
                  userName: title ?? '',
                  imageUrl: avatarUrl,
                ),
                subtitle: datePosted?.timeAgo ?? '',
                trailing: rating != null ? UiKitRatingBadge(rating: rating!) : null,
              ),
              SpacingFoundation.verticalSpace12,
              Text(
                text ?? '',
                style: boldTextTheme?.caption1Medium.copyWith(overflow: TextOverflow.ellipsis),
                maxLines: 3,
              ),
              SpacingFoundation.verticalSpace12,
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (companyAnswered ?? false)
                    Text(
                      S.of(context).CompanyAnswered,
                      style: boldTextTheme?.caption2Medium.copyWith(color: ColorsFoundation.darkNeutral900),
                    ),
                  const Spacer(),
                  GestureDetector(
                    onTap: onLike,
                    child: ImageWidget(
                      iconData: ShuffleUiKitIcons.like,
                      width: 12.w,
                      color: ColorsFoundation.darkNeutral900,
                    ),
                  ),
                  if (helpfulCount != null) SpacingFoundation.horizontalSpace2,
                  if (helpfulCount != null)
                    Text(
                      helpfulCount?.toString() ?? '',
                      style: boldTextTheme?.caption2Medium.copyWith(color: ColorsFoundation.darkNeutral900),
                    ),
                  SpacingFoundation.horizontalSpace8,
                  GestureDetector(
                    onTap: onLike,
                    child: Text(
                      S.of(context).Helpful,
                      style: boldTextTheme?.caption2Medium.copyWith(color: ColorsFoundation.darkNeutral900),
                    ),
                  ),
                ],
              ),
            ],
          ).paddingOnly(
            top: EdgeInsetsFoundation.vertical16,
            bottom: EdgeInsetsFoundation.vertical16,
            left: EdgeInsetsFoundation.horizontal32,
            right: EdgeInsetsFoundation.horizontal16,
          ),
        ),
      ),
    );
  }
}
