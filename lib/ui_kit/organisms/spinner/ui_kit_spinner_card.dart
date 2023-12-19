import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitSpinnerCard extends StatefulWidget {
  final String? photoLink;
  final String? title;
  final DateTime? date;
  final DateTime? dateTo;
  final TimeOfDay? time;
  final TimeOfDay? timeTo;
  final List<String>? weekdays;
  final bool? favourite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final String? ownerPhotoLink;
  final String? ownerTileTitle;
  final Widget? ownerTileTitleTrailing;
  final Future<String>? ownerTileSubtitle;
  final double availableHeight;

  const UiKitSpinnerCard({
    Key? key,
    required this.availableHeight,
    this.photoLink,
    this.title,
    this.date,
    this.dateTo,
    this.time,
    this.timeTo,
    this.favourite,
    this.onTap,
    this.onFavoriteTap,
    this.ownerPhotoLink,
    this.ownerTileTitle,
    this.ownerTileTitleTrailing,
    this.ownerTileSubtitle,
    this.weekdays,
  }) : super(key: key);

  @override
  State<UiKitSpinnerCard> createState() => _UiKitSpinnerCardState();
}

class _UiKitSpinnerCardState extends State<UiKitSpinnerCard> with TickerProviderStateMixin {
  double opacity = 0;
  Duration widgetAnimDurations = const Duration(milliseconds: 150);
  double angle = 0;
  double horizontalAngle = 0;
  late final AnimationController animationVerticalController;
  late final AnimationController animationHorizontalController;
  late Animation<double> _animationVertical;
  late Animation<double> _animationHorizontal;

  @override
  void initState() {
    super.initState();
    animationVerticalController = AnimationController(
      vsync: this,
      duration: widgetAnimDurations,
    );
    animationHorizontalController = AnimationController(
      vsync: this,
      duration: widgetAnimDurations,
    );
    animationHorizontalController.addListener(_horizontalAnimationListener);
    animationVerticalController.addListener(_rotateAnimationListener);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        opacity = 1;
      });
    });
  }

  _rotateAnimationListener() {
    setState(() {
      angle = _animationVertical.value;
    });
  }

  _horizontalAnimationListener() {
    setState(() {
      horizontalAngle = _animationHorizontal.value;
    });
  }

  @override
  void didUpdateWidget(covariant UiKitSpinnerCard oldWidget) {
    widgetAnimDurations = Duration.zero;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    animationVerticalController.removeListener(_rotateAnimationListener);
    animationVerticalController.dispose();
    animationHorizontalController.removeListener(_horizontalAnimationListener);
    animationHorizontalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.uiKitTheme?.boldTextTheme;
    final titleStyle = textTheme?.caption1Bold;
    final dateTextStyle = textTheme?.caption2Bold.copyWith(
      color: ColorsFoundation.darkNeutral900,
    );
    final String? convertedDate = formatDate(
      widget.date,
      widget.dateTo,
      widget.time,
      widget.timeTo,
      widget.weekdays,
    );

    final normalCardWidth = 0.75.sw;
    final normalCardHeight = widget.availableHeight * 0.76;
    final heightStep = normalCardHeight / 3;
    //вынесена в константу значение поворота в обе стороны
    const double rotationAngle = 25;
    const double horizontalRotationAngle = 6;

    final bigPhoto = widget.availableHeight > 360;
    final errorWidget = bigPhoto
        ? const UiKitBigPhotoErrorWidget()
        : UiKitCompactPhotoErrorWidget(
            topSpacing: widget.availableHeight / 8,
          );

    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      //крутим по y оси для того чтобы карточка отклонялась
      ..rotateY(angle / 180 * math.pi)
      //крутим по x оси для шарнирного эффекта. ставим -4 как коэффициент для наклона назад меньшего в 4 раза чем в бок
      ..rotateX(horizontalAngle / 180 * math.pi);

    return Listener(
        onPointerDown: (PointerDownEvent event) {
          if (event.localPosition.dx < normalCardWidth / 2) {
            _animationVertical = Tween<double>(begin: 0, end: rotationAngle).animate(animationVerticalController);
          } else {
            _animationVertical = Tween<double>(begin: 0, end: -rotationAngle).animate(animationVerticalController);
          }

          if (event.localPosition.dy < heightStep) {
            _animationHorizontal =
                Tween<double>(begin: 0, end: -horizontalRotationAngle).animate(animationHorizontalController);
          } else if (event.localPosition.dy > normalCardHeight - heightStep) {
            _animationHorizontal =
                Tween<double>(begin: 0, end: horizontalRotationAngle).animate(animationHorizontalController);
          } else {
            _animationHorizontal = Tween<double>(begin: 0, end: 0).animate(animationHorizontalController);
          }

          animationVerticalController.forward(from: 0);
          animationHorizontalController.forward(from: 0);
        },
        onPointerUp: (PointerUpEvent event) {
          animationVerticalController.reverse();
          animationHorizontalController.reverse();
        },
        child: AnimatedOpacity(
          duration: widgetAnimDurations,
          opacity: opacity,
          child: SizedBox(
            width: kIsWeb ? 200 : normalCardWidth,
            height: widget.availableHeight + SpacingFoundation.verticalSpacing8,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SpacingFoundation.verticalSpace8,
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: normalCardHeight),
                    child: Transform(
                      transform: transform,
                      alignment: Alignment.center,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusFoundation.all24,
                            child: ImageWidget(
                              link: widget.photoLink,
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
                              blurred: true,
                              data: BaseUiKitButtonData(
                                iconWidget: AnimatedSwitcher(
                                  duration: widgetAnimDurations,
                                  child: widget.favourite == true
                                      ? const ImageWidget(
                                          iconData: ShuffleUiKitIcons.starfill,
                                          color: Colors.white,
                                          fit: BoxFit.cover,
                                        )
                                      : const ImageWidget(
                                          iconData: ShuffleUiKitIcons.staroutline,
                                          color: Colors.white,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                                onPressed: widget.onFavoriteTap,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                SpacingFoundation.verticalSpace12,
                if (widget.title != null)
                  Text(
                    '${widget.title}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: titleStyle,
                  ),
                if (convertedDate != null) ...[
                  SpacingFoundation.verticalSpace4,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ImageWidget(
                          iconData: ShuffleUiKitIcons.clock,
                          color: ColorsFoundation.darkNeutral900,
                          width: kIsWeb ? 16 : 0.05.sw,
                          height: kIsWeb ? 16 : 0.05.sw,
                          fit: BoxFit.fitWidth,
                        ),
                        SpacingFoundation.horizontalSpace4,
                        Text(
                          convertedDate,
                          style: dateTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ));
  }
}
