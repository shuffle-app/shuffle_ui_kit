import 'dart:collection';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class UiKitPhotoSlider extends StatefulWidget {
  final List<UiKitMedia> media;
  final double width;
  final double height;
  final int initialIndex;

  const UiKitPhotoSlider({
    Key? key,
    required this.media,
    required this.width,
    this.initialIndex = 0,
    required this.height,
  }) : super(key: key);

  @override
  State<UiKitPhotoSlider> createState() => _UiKitPhotoSliderState();
}

class _UiKitPhotoSliderState extends State<UiKitPhotoSlider>
    with TickerProviderStateMixin {
  // final ValueNotifier _slideController = ValueNotifier(0);
  final _animDuration = const Duration(milliseconds: 150);
  late CardAnimation _cardAnimation;
  late AnimationController _animationController;

  final _undoableIndex = Undoable<int?>(null);
  final Queue<CardSwiperDirection> _directionHistory = Queue();
  bool _tappedOnTop = false;
  SwipeType _swipeType = SwipeType.none;
  CardSwiperDirection _detectedDirection = CardSwiperDirection.none;

  int? get _currentIndex => _undoableIndex.state;

  // int? get _nextIndex => getValidIndexOffset(1);

  @override
  void initState() {
    super.initState();

    _undoableIndex.state = widget.initialIndex;

    // _slideController.addListener(_controllerListener);

    _animationController = AnimationController(
      duration: _animDuration,
      vsync: this,
    )
      ..addListener(_animationListener)
      ..addStatusListener(_animationStatusListener);

    _cardAnimation = CardAnimation(
      animationController: _animationController,
    );
  }

  @override
  void dispose() {
    // _slideController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('_currentIndex is $_currentIndex');

    return SizedBox(
        height: widget.height,
        width: widget.width,
        child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              ...List.generate(widget.media.length - 1, (index) {
                final media = List.from(widget.media);
                media.removeAt(_currentIndex ?? 0);
                if ((index - (_currentIndex ?? 0)) < 0) {
                  return _buildLeftItem(
                      context, media[index], (_currentIndex ?? 0) - index);
                } else {
                  return _buildRightItem(
                      context, media[index], index - (_currentIndex ?? 0));
                }
              }).reversed.toList(),
              _buildFirstItem(context, widget.media[_currentIndex ?? 0]),
            ]));
  }

  Widget _buildFirstItem(BuildContext context, UiKitMedia item) {
    return Positioned(
      left: _cardAnimation.left,
      right: _cardAnimation.right,
      child: GestureDetector(
        child: SliderPhotoCard(
          media: item,
          givenSize: Size(
              widget.width - _cardAnimation.left - _cardAnimation.right,
              widget.height * _cardAnimation.scale),
        ),

        // onTap: () async {
        //   if (widget.isDisabled) {
        //     await widget.onTapDisabled?.call();
        //   }
        // },
        onHorizontalDragStart: (tapInfo) {
          print('onHorizontalDragStart here with tapInfo $tapInfo');
          // if (!widget.isDisabled) {
          final renderBox = context.findRenderObject()! as RenderBox;
          final position = renderBox.globalToLocal(tapInfo.globalPosition);

          if (position.dy < renderBox.size.height / 2) _tappedOnTop = true;
          // }
        },
        onHorizontalDragUpdate: (tapInfo) {
          final isLastCard = _currentIndex! == widget.media.length - 1;
          final isFirstCard = _currentIndex! == 0;
          if (isLastCard && tapInfo.delta.dx < 0) return;
          if (isFirstCard && tapInfo.delta.dx > 0) return;
          print('onHorizontalDragUpdate here with tapInfo $tapInfo');
          // dragPosition -= details.delta.dx;

          // if (!widget.isDisabled) {
          setState(
            () => _cardAnimation.update(
              tapInfo.delta.dx,
              tapInfo.delta.dy,
              _tappedOnTop,
            ),
          );
          // }
        },
        onHorizontalDragEnd: (tapInfo) {
          print('onHorizontalDragEnd here with tapInfo $tapInfo');
          // if (_canSwipe) {
          _tappedOnTop = false;
          _onEndAnimation();
          // }
        },
      ),
    );
  }

  Widget _buildLeftItem(
      BuildContext context, UiKitMedia item, int differenceFromFirstCard) {
    return Positioned(
      left: 40 / differenceFromFirstCard - 20,
      // left: 0,
      child: SliderPhotoCard(
        media: item,
        givenSize: Size(widget.width / 2,
            widget.height * (1 - differenceFromFirstCard * 0.1)),
      ),
    );
  }

  Widget _buildRightItem(
      BuildContext context, UiKitMedia item, int differenceFromFirstCard) {
    return Positioned(
      right: 40 / differenceFromFirstCard - 20,
      // right: 0,
      child: SliderPhotoCard(
        media: item,
        givenSize: Size(widget.width / 2,
            widget.height * (1 - differenceFromFirstCard * 0.1)),
      ),
    );
  }

  // void _controllerListener() {
  //   switch (_slideController.state) {
  //     case CardSwiperState.swipe:
  //       return _swipe(widget.direction);
  //     case CardSwiperState.swipeLeft:
  //       return _swipe(CardSwiperDirection.left);
  //     case CardSwiperState.swipeRight:
  //       return _swipe(CardSwiperDirection.right);
  //     case CardSwiperState.swipeTop:
  //       return _swipe(CardSwiperDirection.top);
  //     case CardSwiperState.swipeBottom:
  //       return _swipe(CardSwiperDirection.bottom);
  //     case CardSwiperState.undo:
  //       return _undo();
  //     default:
  //       return;
  //   }
  // }

  void _animationListener() {
    if (_animationController.status == AnimationStatus.forward) {
      setState(_cardAnimation.sync);
    }
  }

  Future<void> _animationStatusListener(AnimationStatus status) async {
    if (status == AnimationStatus.completed) {
      switch (_swipeType) {
        case SwipeType.swipe:
          await _handleCompleteSwipe();
          break;
        default:
          break;
      }

      _reset();
    }
  }

  Future<void> _handleCompleteSwipe() async {
    _undoableIndex.state = (_currentIndex ?? 0) +
        (_detectedDirection == CardSwiperDirection.left ? 1 : -1);
    // final shouldCancelSwipe = await widget.onSwipe
    //     ?.call(_currentIndex!, _nextIndex, _detectedDirection) ==
    //     false;
    //
    // if (shouldCancelSwipe) {
    //   return;
    // }

    // _undoableIndex.state = _nextIndex;
    _directionHistory.add(_detectedDirection);

    // if (isLastCard) {
    //   widget.onEnd?.call();
    // }
  }

  void _reset() {
    setState(() {
      _animationController.reset();
      _cardAnimation.reset();
      _swipeType = SwipeType.none;
    });
  }

  void _onEndAnimation() {
    if (_cardAnimation.left.abs() > 50) {
      final direction = _cardAnimation.left.isNegative
          ? CardSwiperDirection.left
          : CardSwiperDirection.right;
      _swipe(direction);
    } else {
      _goBack();
    }
  }

  void _swipe(CardSwiperDirection direction) {
    if (_currentIndex == null) return;

    _swipeType = SwipeType.swipe;
    _detectedDirection = direction;
    _cardAnimation.animate(context, direction);
  }

  void _goBack() {
    _swipeType = SwipeType.back;
    _detectedDirection = CardSwiperDirection.none;
    _cardAnimation.animateBack(context);
  }

// void _undo() {
//   if (_directionHistory.isEmpty) return;
//   if (_undoableIndex.previousState == null) return;
//
//   final direction = _directionHistory.last;
//   final shouldCancelUndo = widget.onUndo?.call(
//     _currentIndex,
//     _undoableIndex.previousState!,
//     direction,
//   ) ==
//       false;
//
//   if (shouldCancelUndo) {
//     return;
//   }
//
//   _undoableIndex.undo();
//   _directionHistory.removeLast();
//   _swipeType = SwipeType.undo;
//   _cardAnimation.animateUndo(context, direction);
// }
}

class SliderPhotoCard extends StatelessWidget {
  final UiKitMedia media;
  final Size givenSize;

  const SliderPhotoCard({
    Key? key,
    required this.media,
    required this.givenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: givenSize,
      child: media.type == UiKitMediaType.image
          ? MediaWidget.image(media: media)
          : MediaWidget.video(media: media),
    );
  }
}

///helpers

class Undoable<T> {
  Undoable(this._value, {Undoable? previousValue}) : _previous = previousValue;

  T _value;
  Undoable? _previous;

  T get state => _value;

  T? get previousState => _previous?.state;

  set state(T newValue) {
    _previous = Undoable(_value, previousValue: _previous);
    _value = newValue;
  }

  void undo() {
    if (_previous != null) {
      _value = _previous!._value;
      _previous = _previous?._previous;
    }
  }
}

extension Range on num {
  bool isBetween(num from, num to) {
    return from <= this && this <= to;
  }
}

enum CardSwiperDirection { none, left, right, top, bottom }

enum SwipeType { none, swipe, back, undo }

class CardAnimation {
  CardAnimation({
    required this.animationController,
    this.maxAngle = 30,
    this.initialScale = 1,
  }) : scale = initialScale;

  final double maxAngle;
  final double initialScale;
  final AnimationController animationController;

  double left = 40;
  double right = 40;
  double total = 0;
  double firstCardAngle = 0;
  double scale;
  double difference = 40;

  late Animation<double> _leftAnimation;
  late Animation<double> _rightAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _differenceAnimation;

  double get _maxAngleInRadian => maxAngle * (pi / 180);

  void sync() {
    left = _leftAnimation.value;
    right = _rightAnimation.value;
    scale = _scaleAnimation.value;
    difference = _differenceAnimation.value;
  }

  void reset() {
    animationController.reset();
    left = 40;
    right = 40;
    total = 0;
    firstCardAngle = 0;
    scale = initialScale;
    difference = 40;
  }

  void update(double dx, double dy, bool inverseAngle) {
    print('on dragupdate here with dx $dx');
    // if (isHorizontalSwipingEnabled) {
    left += dx;
    right -= dx;
    // }
    // if (isVerticalSwipingEnabled) {
    //   top += dy;
    // }
    total += dx;
    updateAngle(inverseAngle);
    updateScale();
    updateDifference();
  }

  void updateAngle(bool inverse) {
    if (firstCardAngle.isBetween(-_maxAngleInRadian, _maxAngleInRadian)) {
      firstCardAngle = _maxAngleInRadian * left / 1000;
      if (inverse) firstCardAngle *= -1;
    }
  }

  void updateScale() {
    if (scale.isBetween(initialScale, 1.0)) {
      scale = (total > 0)
          ? initialScale + (total / 5000)
          : initialScale + -(total / 5000);
    }
  }

  void updateDifference() {
    if (difference.isBetween(0, difference)) {
      difference = (total > 0) ? 40 - (total / 10) : 40 + (total / 10);
    }
  }

  void animate(BuildContext context, CardSwiperDirection direction) {
    switch (direction) {
      case CardSwiperDirection.left:
        return animateHorizontally(context, false);
      case CardSwiperDirection.right:
        return animateHorizontally(context, true);
      default:
        return;
    }
  }

  void animateHorizontally(BuildContext context, bool isToRight) {
    final screenWidth = MediaQuery.of(context).size.width;

    _leftAnimation = Tween<double>(
      begin: left,
      end: isToRight ? screenWidth : -screenWidth,
    ).animate(animationController);
    _rightAnimation = Tween<double>(
      begin: right,
      end: isToRight ? -screenWidth : screenWidth,
    ).animate(animationController);
    _scaleAnimation = Tween<double>(
      begin: scale,
      end: 1.0,
    ).animate(animationController);
    _differenceAnimation = Tween<double>(
      begin: difference,
      end: 0,
    ).animate(animationController);
    animationController.forward();
  }

  void animateBack(BuildContext context) {
    print('here is animateBack');
    _leftAnimation = Tween<double>(
      begin: left,
      end: 0,
    ).animate(animationController);
    _rightAnimation = Tween<double>(
      begin: right,
      end: 0,
    ).animate(animationController);
    _scaleAnimation = Tween<double>(
      begin: scale,
      end: initialScale,
    ).animate(animationController);
    _differenceAnimation = Tween<double>(
      begin: difference,
      end: 40,
    ).animate(animationController);
    animationController.forward();
  }
}
