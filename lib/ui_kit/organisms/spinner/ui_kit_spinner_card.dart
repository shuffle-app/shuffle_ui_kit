import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitSpinnerCard extends StatefulWidget {
  final String? photoLink;
  final String? title;
  final DateTime? date;
  final bool? favourite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final String? ownerPhotoLink;
  final String? ownerTileTitle;
  final Widget? ownerTileTitleTrailing;
  final String? ownerTileSubtitle;
  final double availableHeight;

  const UiKitSpinnerCard({
    Key? key,
    this.photoLink,
    this.title,
    this.date,
    this.favourite,
    this.onTap,
    required this.availableHeight,
    this.onFavoriteTap,
    this.ownerPhotoLink,
    this.ownerTileTitle,
    this.ownerTileTitleTrailing,
    this.ownerTileSubtitle,
  }) : super(key: key);

  @override
  State<UiKitSpinnerCard> createState() => _UiKitSpinnerCardState();
}

class _UiKitSpinnerCardState extends State<UiKitSpinnerCard> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.boldTextTheme;
    final titleStyle = textTheme?.caption1Bold;
    final dateTextStyle = textTheme?.caption1Bold.copyWith(
      color: ColorsFoundation.darkNeutral900,
    );

    final bigPhoto = widget.availableHeight > 360;
    final errorWidget = bigPhoto
        ? const UiKitBigPhotoErrorWidget()
        : UiKitCompactPhotoErrorWidget(
            topSpacing: widget.availableHeight / 8,
          );

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 150),
      opacity: opacity,
      child: SizedBox(
        width: 0.75.sw,
        height: widget.availableHeight,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SpacingFoundation.verticalSpace8,
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.passthrough,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusFoundation.all24,
                    child: ImageWidget(
                      link: 'widget.photoLink',
                      fit: BoxFit.cover,
                      errorWidget: errorWidget,
                    ),
                  ),
                  Positioned(
                    bottom: SpacingFoundation.verticalSpacing10,
                    left: SpacingFoundation.horizontalSpacing10,
                    right: SpacingFoundation.horizontalSpacing10,
                    child: UiKitBlurredListTile(
                      title: widget.ownerTileTitle,
                      titleTrailing: widget.ownerTileTitleTrailing,
                      subtitle: widget.ownerTileSubtitle,
                      photoLink: widget.ownerPhotoLink,
                    ),
                  ),
                  Positioned.fill(
                    child: Material(
                      elevation: 0,
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      type: MaterialType.card,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusFoundation.all24,
                      ),
                      child: InkWell(
                        splashColor: ColorsFoundation.darkNeutral500.withOpacity(0.24),
                        onTap: widget.onTap,
                        child: Ink(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -SpacingFoundation.verticalSpacing8,
                    right: -SpacingFoundation.horizontalSpacing8,
                    child: context.smallButton(
                      icon: ImageWidget(
                        svgAsset: widget.favourite == true
                            ? GraphicsFoundation.instance.svg.starFill
                            : GraphicsFoundation.instance.svg.starOutline,
                        color: Colors.white,
                        fit: BoxFit.cover,
                      ),
                      onPressed: widget.onFavoriteTap,
                    ),
                  ),
                ],
              ),
            ),
            SpacingFoundation.verticalSpace12,
            Text(
              '${widget.title}',
              style: titleStyle,
            ),
            SpacingFoundation.verticalSpace4,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ImageWidget(
                  svgAsset: GraphicsFoundation.instance.svg.clock,
                  color: ColorsFoundation.darkNeutral900,
                ),
                SpacingFoundation.horizontalSpace4,
                Text(
                  widget.date != null ? DateFormat('HH:MM a, MMM dd').format(widget.date!) : 'Coming soon',
                  style: dateTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
