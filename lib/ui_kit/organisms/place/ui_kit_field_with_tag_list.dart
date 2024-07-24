import 'package:flutter/cupertino.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitFieldWithTagList extends StatelessWidget {
  final List<UiKitTag>? listUiKitTags;
  final String title;
  final Function() onTap;
  const UiKitFieldWithTagList({
    super.key,
    required this.listUiKitTags,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: context.uiKitTheme?.regularTextTheme.body,
              ),
            ),
            context.outlinedButton(
              data: BaseUiKitButtonData(
                onPressed: onTap,
                iconInfo: BaseUiKitButtonIconData(
                  iconData: CupertinoIcons.chevron_forward,
                  size: 16.h,
                ),
              ),
            )
          ],
        ),
        SpacingFoundation.verticalSpace8,
        listUiKitTags != null
            ? UiKitTagsWidget(baseTags: listUiKitTags!)
            : SpacingFoundation.none,
      ],
    );
  }
}
