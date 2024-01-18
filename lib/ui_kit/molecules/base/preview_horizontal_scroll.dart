import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class PreviewHorizontalScroll extends StatelessWidget {
  final String title;
  final List<Widget> previewItems;
  final double horizontalPadding;
  final double previewItemHeight;
  final VoidCallback? onViewAllTap;

  const PreviewHorizontalScroll(
      {super.key,
      required this.title,
      required this.previewItems,
      this.horizontalPadding = 16,
      this.previewItemHeight = 50,
      this.onViewAllTap});

  @override
  Widget build(BuildContext context) {
    final theme = context.uiKitTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme?.boldTextTheme.body,
            ),
            InkWell(
                borderRadius: BorderRadius.zero,
                onTap: onViewAllTap,
                child: Ink(
                    child: Text(
                  S.of(context).ViewAll,
                  style: theme?.boldTextTheme.caption1Bold.copyWith(color: theme.colorScheme.darkNeutral300),
                ))),
          ],
        ).paddingSymmetric(horizontal: horizontalPadding),
        SpacingFoundation.verticalSpace10,
        SizedBox(
            height: previewItemHeight.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                clipBehavior: Clip.hardEdge,
                primary: false,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return previewItems[index].paddingOnly(left: horizontalPadding);
                  } else if (index == previewItems.length - 1) {
                    return previewItems[index].paddingOnly(right: horizontalPadding);
                  }

                  return previewItems[index];
                },
                separatorBuilder: (context, index) => (horizontalPadding*1.5).w.widthBox,
                itemCount: previewItems.length))
      ],
    );
  }
}
