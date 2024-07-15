import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitMessageCard extends StatelessWidget {
  const UiKitMessageCard({
    super.key,
    required this.name,
    required this.userType,
    required this.subtitle,
    required this.avatarPath,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.onTap,
    this.subtitleIconPath,
    this.unreadMessageCount,
    this.disabled = false,
  });

  final String name;
  final String subtitle;
  final String? subtitleIconPath;
  final String lastMessage;
  final String lastMessageTime;
  final String avatarPath;
  final UserTileType userType;
  final VoidCallback onTap;
  final bool disabled;

  final int? unreadMessageCount;

  factory UiKitMessageCard.empty() {
    return UiKitMessageCard(
      name: '',
      userType: UserTileType.ordinary,
      subtitle: '',
      avatarPath: '',
      lastMessage: '',
      lastMessageTime: '',
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final boldTextTheme = context.uiKitTheme?.boldTextTheme;
    final regularTextTheme = context.uiKitTheme?.regularTextTheme;
    final colorScheme = context.uiKitTheme?.colorScheme;
    final cardColor = context.uiKitTheme?.cardColor;
    print('chat $name is disabled: $disabled');

    return Material(
      borderRadius: BorderRadiusFoundation.all24,
      clipBehavior: Clip.hardEdge,
      color: cardColor,
      child: InkWell(
        onTap: disabled ? null : () => onTap.call(),
        child: Ink(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Opacity(
                opacity: disabled ? 0.5 : 1.0,
                child: Row(
                  children: [
                    context.userAvatar(
                        size: UserAvatarSize.x40x40, type: userType, userName: name, imageUrl: avatarPath),
                    SpacingFoundation.horizontalSpace12,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  name,
                                  style: boldTextTheme?.caption1Medium.copyWith(overflow: TextOverflow.ellipsis),
                                  maxLines: 1,
                                ),
                              ),
                              SpacingFoundation.horizontalSpace8,
                              UiKitUserBadge(userType: userType)
                            ],
                          ),
                          SpacingFoundation.verticalSpace2,
                          Row(
                            children: [
                              if (subtitleIconPath != null)
                                ImageWidget(
                                  link: subtitleIconPath,
                                  height: 14.h,
                                  fit: BoxFit.fitHeight,
                                  color: colorScheme?.darkNeutral900,
                                ).paddingOnly(right: EdgeInsetsFoundation.horizontal4),
                              Text(
                                subtitle,
                                style: boldTextTheme?.caption1Bold.copyWith(
                                  color: colorScheme?.darkNeutral900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                lastMessageTime,
                style: regularTextTheme?.caption4.copyWith(
                  color: colorScheme?.darkNeutral900,
                ),
                textAlign: TextAlign.end,
              ),
              SpacingFoundation.verticalSpace8,
              Row(
                children: [
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 20.w),
                      child: Text(
                        lastMessage,
                        overflow: TextOverflow.ellipsis,
                        style: boldTextTheme?.caption1Medium.copyWith(
                          color: disabled
                              ? colorScheme?.inverseSurface
                              : (unreadMessageCount ?? 0) == 0
                                  ? colorScheme?.darkNeutral900
                                  : null,
                        ),
                        textAlign: disabled ? TextAlign.end : TextAlign.start,
                      ),
                    ),
                  ),
                  SpacingFoundation.horizontalSpace8,
                  if (unreadMessageCount != null && unreadMessageCount! > 0)
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme?.inversePrimary,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        unreadMessageCount!.toStringAsFixed(0),
                        style: boldTextTheme?.caption1Bold.copyWith(color: colorScheme?.primary),
                        textAlign: TextAlign.center,
                      ).paddingAll(EdgeInsetsFoundation.all4),
                    )
                ],
              ),
            ],
          ).paddingAll(EdgeInsetsFoundation.all16),
        ),
      ),
    );
  }
}
