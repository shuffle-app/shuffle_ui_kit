import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shuffle_uikit/shuffle_uikit.dart';

class FingerprintButton extends StatefulWidget {
  const FingerprintButton({
    super.key,
    required this.animationPath,
    required this.title,
    this.height,
    this.width,
    this.onPressed,
  });

  final String animationPath;
  final Widget title;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  @override
  State<FingerprintButton> createState() => _FingerprintButtonState();
}

class _FingerprintButtonState extends State<FingerprintButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isPressed = false;
  bool _isCompleted = false;
  final ValueNotifier<Offset> _currentPosition =
      ValueNotifier<Offset>(Offset.zero);
  final Offset _startPosition = Offset.zero;
  late final Offset _finishPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _setAnimationListener();
  }

  void _setAnimationListener() {
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isPressed = true;
          widget.onPressed;
        });
      } else if (status == AnimationStatus.dismissed) {
        setState(() {
          _isPressed = false;
        });
      }
    });
  }

  void _startAnimation() {
    _controller.forward();
  }

  void _reverseAnimation() {
    if (!_isCompleted) {
      _controller.reverse().then((value) {
        if (_currentPosition.value.dx < _finishPosition.dx / 2) {
          _currentPosition.value = _startPosition;
        }
      });
    }
  }

  List<BoxShadow>? _getShadow(bool isPressed) {
    return isPressed
        ? [
            BoxShadow(
              color: ColorsFoundation.shadowPink.withOpacity(0.9),
              blurRadius: 10,
              spreadRadius: -5,
              offset: Offset.zero,
            )
          ]
        : [];
  }

  double _updatePosition(double distance) {
    if (distance < _startPosition.dx) {
      return _startPosition.dx;
    }
    if (distance >= _finishPosition.dx) {
      return _finishPosition.dx;
    }

    return distance;
  }

  void _setPosition(details) {
    if (_isPressed && !_isCompleted) {
      _currentPosition.value = details.localPosition;
    }
  }

  void _resetPosition() {
    if (_currentPosition.value >= _finishPosition / 2) {
      setState(() => _isCompleted = true);
      _currentPosition.value = _finishPosition;
    } else {
      _reverseAnimation();
    }
  }

  @override
  void didChangeDependencies() {
    _finishPosition =
        Offset(MediaQuery.sizeOf(context).width - (widget.width ?? 105.w), 0);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    _currentPosition.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = 0.27.sw * 1.68;
    final width = 105.w;

    return ValueListenableBuilder(
      valueListenable: _currentPosition,
      builder: (_, currentPosition, __) => AnimatedPositioned(
        duration: const Duration(milliseconds: 100),
        left: _updatePosition(currentPosition.dx),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: widget.height ?? height,
            maxWidth: widget.width ?? width,
          ),
          child: GestureDetector(
            onTapDown: (_) => _startAnimation(),
            onTapUp: (_) => _reverseAnimation(),
            onPanUpdate: (details) => _setPosition(details),
            onPanEnd: (_) => _resetPosition(),
            onPanStart: (details) => _setPosition(details),
            child: AnimatedContainer(
              duration: Duration.zero,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusFoundation.all28,
                boxShadow: _getShadow(_isPressed),
              ),
              child: UiKitCardWrapper(
                width: widget.width ?? width,
                height: widget.height ?? height,
                color: ColorsFoundation.surface3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientableWidget(
                      gradient: GradientFoundation.touchIdLinearGradient,
                      child: widget.title,
                    ),
                    SpacingFoundation.verticalSpace12,
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: SizedBox(
                        height: 48.w,
                        width: 48.w,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: LottieBuilder.asset(
                            package: 'shuffle_uikit',
                            widget.animationPath,
                            fit: BoxFit.cover,
                            controller: _controller,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ).paddingAll(EdgeInsetsFoundation.all4),
            ),
          ),
        ),
      ),
    );
  }
}
