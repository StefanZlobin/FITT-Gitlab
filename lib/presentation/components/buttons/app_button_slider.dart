// ignore_for_file: unused_element

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class AppButtonSlider extends StatelessWidget {
  const AppButtonSlider({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.swipedBackgroundColor,
    required this.activeText,
    this.inactiveText,
    required this.action,
    this.enabled = true,
  })  : assert(enabled || inactiveText != null),
        super(key: key);

  final bool enabled;
  final IconData icon;
  final Color iconColor;

  /// Background color of button transitions from oxford10 to [swipedBackgroundColor] during swipe.
  final Color swipedBackgroundColor;
  final String activeText;
  final String? inactiveText;

  /// [action] is executed after slide is complete.
  ///
  /// Returns whether action was successful.
  ///
  /// If It returns true, button freezes in completed state.
  /// Otherwise slider returns to it's initial position.
  final Future<bool?> Function() action;

  Widget _buildBackground(BuildContext context, Animation<double> moveAnimation,
      SlideDirection moveDirection) {
    final colorAnimation =
        ColorTween(begin: AppColors.kOxford10, end: swipedBackgroundColor) //
            .animate(moveAnimation);

    final backgroundText = enabled ? activeText : inactiveText ?? '';

    return CenterLeft(
      child: AnimatedBuilder(
        animation: moveAnimation,
        builder: (context, child) {
          return Container(
            height: 56,
            width: double.infinity,
            decoration: ShapeDecoration(
              shape: SuperellipseShape(
                borderRadius: superellipseRadius(12),
              ),
              color: colorAnimation.value,
            ),
            child: child,
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Text(
              backgroundText,
              style: AppTypography.kH14.apply(color: AppColors.kOxford60),
              textAlign: TextAlign.center,
              maxLines: 2,
              softWrap: true,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChild(BuildContext context, Animation<double> moveAnimation,
      SlideDirection moveDirection) {
    return SizedBox(
      width: double.infinity,
      child: CenterLeft(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
          padding: const EdgeInsets.all(16.0),
          decoration: ShapeDecoration(
            color: AppColors.kBaseWhite,
            shape: SuperellipseShape(borderRadius: superellipseRadius(12)),
            //shadows: [theme.cardShadow]
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!enabled) {
      return _buildBackground(context, const AlwaysStoppedAnimation(0.0),
          SlideDirection.startToEnd);
    }

    return _Slidable(
      key: key ?? UniqueKey(),
      direction: SlideDirection.startToEnd,
      behavior: HitTestBehavior.deferToChild,
      slideThresholds: const {SlideDirection.startToEnd: 1},
      confirmSlideEnd: (_) => action(),
      background: _buildBackground,
      childSize: const Size.fromWidth(58),
      child: _buildChild,
    );
  }
}

// ##############################################################################
//                                                                              #
//                                                                              #
// This is a modified material Dismissible widget.                              #
// It can stay in widget tree after slide animation.
//
// Этот виджет не готов для самостоятельного использования.
// Его лучше использовать как основу для других компонентов,
// предварительно кастомизировав.
//                                                                              #
//                                                                              #
// ##############################################################################

const double _kMinFlingVelocity = 700.0;
const double _kMinFlingVelocityDelta = 400.0;
const double _kFlingVelocityScale = 1.0 / 300.0;
const double _kSlideThreshold = 0.7;

/// Signature used by [_Slidable] to indicate that it has been dismissed in
/// the given `direction`.
///
/// Used by [_Slidable.onCollapsed].
typedef SlideDirectionCallback = void Function(SlideDirection direction);

/// Signature used by [_Slidable] to give the application an opportunity to
/// confirm or veto a dismiss gesture.
///
/// Used by [_Slidable.confirmCollapse].
typedef ConfirmCActionCallback = Future<bool?> Function(
    SlideDirection direction);

typedef SlidableAnimatedBuilder = Widget Function(
  BuildContext context,
  Animation<double> moveAnimation,
  SlideDirection moveDirection,
);

/// The direction in which a [_Slidable] can be dismissed.
enum SlideDirection {
  /// The [_Slidable] can be dismissed by dragging either up or down.
  vertical,

  /// The [_Slidable] can be dismissed by dragging either left or right.
  horizontal,

  /// The [_Slidable] can be dismissed by dragging in the reverse of the
  /// reading direction (e.g., from right to left in left-to-right languages).
  endToStart,

  /// The [_Slidable] can be dismissed by dragging in the reading direction
  /// (e.g., from left to right in left-to-right languages).
  startToEnd,

  /// The [_Slidable] can be dismissed by dragging up only.
  up,

  /// The [_Slidable] can be dismissed by dragging down only.
  down,

  /// The [_Slidable] cannot be dismissed by dragging.
  none
}

///
/// A widget that can be dismissed by dragging in the indicated [direction].
///
/// Dragging or flinging this widget in the [SlideDirection] causes the child
/// to slide out of view. Following the slide animation, if [resizeDuration] is
/// non-null, the Dismissible widget animates its height (or width, whichever is
/// perpendicular to the dismiss direction) to zero over the [resizeDuration].
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=iEMgjrfuc58}
///
/// {@tool dartpad --template=stateful_widget_scaffold}
///
/// This sample shows how you can use the [_Slidable] widget to
/// remove list items using swipe gestures. Swipe any of the list
/// tiles to the left or right to dismiss them from the [ListView].
///
/// For an example usage see [Dismissible]
///
/// Backgrounds can be used to implement the "leave-behind" idiom. If a background
/// is specified it is stacked behind the Dismissible's child and is exposed when
/// the child moves.
///
/// The widget calls the [onCollapsed] callback either after its size has
/// collapsed to zero (if [resizeDuration] is non-null) or immediately after
/// the slide animation (if [resizeDuration] is null). If the Dismissible is a
/// list item, it must have a key that distinguishes it from the other items and
/// its [onCollapsed] callback must remove the item from the list.
class _Slidable extends StatefulWidget {
  /// Creates a widget that can be dismissed.
  ///
  /// The [key] argument must not be null because [_Slidable]s are commonly
  /// used in lists and removed from the list when dismissed. Without keys, the
  /// default behavior is to sync widgets based on their index in the list,
  /// which means the item after the dismissed item would be synced with the
  /// state of the dismissed item. Using keys causes the widgets to sync
  /// according to their keys and avoids this pitfall.
  const _Slidable({
    required Key key,
    required this.child,
    this.background,
    this.secondaryBackground,
    this.confirmSlideEnd,
    this.direction = SlideDirection.horizontal,
    this.slideThresholds = const <SlideDirection, double>{},
    this.movementDuration = const Duration(milliseconds: 200),
    this.crossAxisEndOffset = 0.0,
    this.dragStartBehavior = DragStartBehavior.start,
    this.behavior = HitTestBehavior.opaque,
    this.childSize = Size.zero,
  })  : assert(secondaryBackground == null || background != null),
        super(key: key);

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final SlidableAnimatedBuilder child;

  /// Used when child is smaller than [_Slidable], e.x. when it has transparent parts.
  ///
  /// Usually used with [behavior] set to [HitTestBehavior.deferToChild].
  final Size childSize;

  /// A widget that is stacked behind the child. If secondaryBackground is also
  /// specified then this widget only appears when the child has been dragged
  /// down or to the right.
  final SlidableAnimatedBuilder? background;

  /// A widget that is stacked behind the child and is exposed when the child
  /// has been dragged up or to the left. It may only be specified when background
  /// has also been specified.
  final SlidableAnimatedBuilder? secondaryBackground;

  /// Called when the widget has been dismissed, before resizing.
  ///
  /// If this function returns true, slide is dismissed and [child] returns to it's
  /// start position;
  final ConfirmCActionCallback? confirmSlideEnd;

  /// The direction in which the widget can be dismissed.
  final SlideDirection direction;

  /// The offset threshold the item has to be dragged in order to be considered
  /// dismissed.
  ///
  /// Represented as a fraction, e.g. if it is 0.4 (the default), then the item
  /// has to be dragged at least 40% towards one direction to be considered
  /// dismissed. Clients can define different thresholds for each dismiss
  /// direction.
  ///
  /// Flinging is treated as being equivalent to dragging almost to 1.0, so
  /// flinging can dismiss an item past any threshold less than 1.0.
  ///
  /// Setting a threshold of 1.0 (or greater) prevents a drag in the given
  /// [SlideDirection] even if it would be allowed by the [direction]
  /// property.
  ///
  /// See also:
  ///
  ///  * [direction], which controls the directions in which the items can
  ///    be dismissed.
  final Map<SlideDirection, double> slideThresholds;

  /// Defines the duration for card to dismiss or to come back to original position if not dismissed.
  final Duration movementDuration;

  /// Defines the end offset across the main axis after the card is dismissed.
  ///
  /// If non-zero value is given then widget moves in cross direction depending on whether
  /// it is positive or negative.
  final double crossAxisEndOffset;

  /// Determines the way that drag start behavior is handled.
  ///
  /// If set to [DragStartBehavior.start], the drag gesture used to dismiss a
  /// dismissible will begin upon the detection of a drag gesture. If set to
  /// [DragStartBehavior.down] it will begin when a down event is first detected.
  ///
  /// In general, setting this to [DragStartBehavior.start] will make drag
  /// animation smoother and setting it to [DragStartBehavior.down] will make
  /// drag behavior feel slightly more reactive.
  ///
  /// By default, the drag start behavior is [DragStartBehavior.start].
  ///
  /// See also:
  ///
  ///  * [DragGestureRecognizer.dragStartBehavior], which gives an example for the different behaviors.
  final DragStartBehavior dragStartBehavior;

  /// How to behave during hit tests.
  ///
  /// This defaults to [HitTestBehavior.opaque].
  final HitTestBehavior behavior;

  @override
  _SlidableState createState() => _SlidableState();
}

enum _FlingGestureKind { none, forward, reverse }

class _SlidableState extends State<_Slidable>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    _moveController =
        AnimationController(duration: widget.movementDuration, vsync: this)
          ..addStatusListener(_handleSlideStatusChanged);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _updateMoveAnimation();
    });
  }

  // ignore: unused_field
  Future? _unawaited;

  AnimationController? _moveController;
  Animation<Offset>? _moveAnimation;

  double _dragExtent = 0.0;
  bool _dragUnderway = false;
  bool _complete = false;

  @override
  bool get wantKeepAlive => _moveController?.isAnimating == true;

  @override
  void dispose() {
    _moveController!.dispose();
    _unawaited = null;
    super.dispose();
  }

  double get _childSize =>
      _directionIsXAxis ? widget.childSize.width : widget.childSize.height;

  bool get _directionIsXAxis {
    return widget.direction == SlideDirection.horizontal ||
        widget.direction == SlideDirection.endToStart ||
        widget.direction == SlideDirection.startToEnd;
  }

  SlideDirection _extentToDirection(double extent) {
    if (extent == 0.0) return SlideDirection.none;
    if (_directionIsXAxis) {
      switch (Directionality.of(context)) {
        case TextDirection.rtl:
          return extent < 0
              ? SlideDirection.startToEnd
              : SlideDirection.endToStart;
        case TextDirection.ltr:
          return extent > 0
              ? SlideDirection.startToEnd
              : SlideDirection.endToStart;
      }
    }
    return extent > 0 ? SlideDirection.down : SlideDirection.up;
  }

  SlideDirection get _dismissDirection => _extentToDirection(_dragExtent);

  bool get _isActive {
    return _dragUnderway || _moveController!.isAnimating;
  }

  double? _overallDragAxisExtentCache;
  double get _overallDragAxisExtent {
    if (_overallDragAxisExtentCache == null) {
      final Size size = context.size!;
      _overallDragAxisExtentCache =
          _directionIsXAxis ? size.width : size.height;
    }
    return _overallDragAxisExtentCache!;
  }

  void _handleDragStart(DragStartDetails details) {
    _dragUnderway = true;
    if (_moveController!.isAnimating) {
      _dragExtent =
          _moveController!.value * _overallDragAxisExtent * _dragExtent.sign;
      _moveController!.stop();
    } else {
      _dragExtent = 0.0;
      _moveController!.value = 0.0;
    }
    setState(() {
      _updateMoveAnimation();
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (!_isActive || _moveController!.isAnimating) return;

    final double delta = details.primaryDelta!;
    final double oldDragExtent = _dragExtent;
    switch (widget.direction) {
      case SlideDirection.horizontal:
      case SlideDirection.vertical:
        _dragExtent += delta;
        break;

      case SlideDirection.up:
        if (_dragExtent + delta < 0) _dragExtent += delta;
        break;

      case SlideDirection.down:
        if (_dragExtent + delta > 0) _dragExtent += delta;
        break;

      case SlideDirection.endToStart:
        switch (Directionality.of(context)) {
          case TextDirection.rtl:
            if (_dragExtent + delta > 0) _dragExtent += delta;
            break;
          case TextDirection.ltr:
            if (_dragExtent + delta < 0) _dragExtent += delta;
            break;
        }
        break;

      case SlideDirection.startToEnd:
        switch (Directionality.of(context)) {
          case TextDirection.rtl:
            if (_dragExtent + delta < 0) _dragExtent += delta;
            break;
          case TextDirection.ltr:
            if (_dragExtent + delta > 0) _dragExtent += delta;
            break;
        }
        break;

      case SlideDirection.none:
        _dragExtent = 0;
        break;
    }
    if (oldDragExtent.sign != _dragExtent.sign) {
      setState(() {
        _updateMoveAnimation();
      });
    }
    if (!_moveController!.isAnimating) {
      _moveController!.value =
          _dragExtent.abs() / (_overallDragAxisExtent - _childSize);
    }
  }

  void _updateMoveAnimation() {
    final double end =
        (1 - _childSize / _overallDragAxisExtent) * _dragExtent.sign;
    _moveAnimation = _moveController!.drive(
      Tween<Offset>(
        begin: Offset.zero,
        end: _directionIsXAxis
            ? Offset(end, widget.crossAxisEndOffset)
            : Offset(widget.crossAxisEndOffset, end),
      ),
    );
  }

  _FlingGestureKind _describeFlingGesture(Velocity velocity) {
    if (_dragExtent == 0.0) {
      // If it was a fling, then it was a fling that was let loose at the exact
      // middle of the range (i.e. when there's no displacement). In that case,
      // we assume that the user meant to fling it back to the center, as
      // opposed to having wanted to drag it out one way, then fling it past the
      // center and into and out the other side.
      return _FlingGestureKind.none;
    }
    final double vx = velocity.pixelsPerSecond.dx;
    final double vy = velocity.pixelsPerSecond.dy;
    SlideDirection flingDirection;
    // Verify that the fling is in the generally right direction and fast enough.
    if (_directionIsXAxis) {
      if (vx.abs() - vy.abs() < _kMinFlingVelocityDelta ||
          vx.abs() < _kMinFlingVelocity) return _FlingGestureKind.none;
      assert(vx != 0.0);
      flingDirection = _extentToDirection(vx);
    } else {
      if (vy.abs() - vx.abs() < _kMinFlingVelocityDelta ||
          vy.abs() < _kMinFlingVelocity) return _FlingGestureKind.none;
      assert(vy != 0.0);
      flingDirection = _extentToDirection(vy);
    }
    if (flingDirection == _dismissDirection) return _FlingGestureKind.forward;
    return _FlingGestureKind.reverse;
  }

  Future<void> _handleDragEnd(DragEndDetails details) async {
    if (!_isActive || _moveController!.isAnimating) return;
    _dragUnderway = false;

    if (_moveController!.isCompleted) return;

    final double flingVelocity = _directionIsXAxis
        ? details.velocity.pixelsPerSecond.dx
        : details.velocity.pixelsPerSecond.dy;
    switch (_describeFlingGesture(details.velocity)) {
      case _FlingGestureKind.forward:
        assert(_dragExtent != 0.0);
        assert(!_moveController!.isDismissed);
        if ((widget.slideThresholds[_dismissDirection] ?? _kSlideThreshold) >=
            1.0) {
          _unawaited = _moveController!.reverse();
          break;
        }
        _dragExtent = flingVelocity.sign;
        _unawaited = _moveController!
            .fling(velocity: flingVelocity.abs() * _kFlingVelocityScale);
        break;
      case _FlingGestureKind.reverse:
        assert(_dragExtent != 0.0);
        assert(!_moveController!.isDismissed);
        _dragExtent = flingVelocity.sign;
        _unawaited = _moveController!
            .fling(velocity: -flingVelocity.abs() * _kFlingVelocityScale);
        break;
      case _FlingGestureKind.none:
        if (!_moveController!.isDismissed) {
          if (_moveController!.value <
              (widget.slideThresholds[_dismissDirection] ?? _kSlideThreshold)) {
            _unawaited = _moveController!.reverse();
          } else if (_moveController!.value < 1.0) {
            _unawaited = _moveController!.forward();
          }
        }
        break;
    }
  }

  Future<void> _handleSlideStatusChanged(AnimationStatus status) async {
    if (status == AnimationStatus.completed) {
      final SlideDirection direction = _dismissDirection;
      final shouldReturn =
          !((await widget.confirmSlideEnd?.call(direction)) ?? false);
      if (!shouldReturn) {
        setState(() => _complete = true);
      } else {
        _unawaited = _moveController!.reverse();
      }
    }
    updateKeepAlive();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // See AutomaticKeepAliveClientMixin.

    assert(!_directionIsXAxis || debugCheckHasDirectionality(context));

    final Animation<double> move = _moveController!;

    Widget? background =
        widget.background?.call(context, move, _dismissDirection);
    if (widget.secondaryBackground != null) {
      final SlideDirection direction = _dismissDirection;
      if (direction == SlideDirection.endToStart ||
          direction == SlideDirection.up) {
        background =
            widget.secondaryBackground?.call(context, move, _dismissDirection);
      }
    }

    Widget content = widget.child(context, move, _dismissDirection);

    if (_moveAnimation != null) {
      content = SlideTransition(
        position: _moveAnimation!,
        child: content,
      );
    }

    if (background != null) {
      content = Stack(
        children: <Widget>[
          background,
          content,
        ],
      );
    }

    if (_complete) {
      return content;
    }

    // We are not resizing but we may be being dragging in widget.direction.
    return GestureDetector(
      onHorizontalDragStart: _directionIsXAxis ? _handleDragStart : null,
      onHorizontalDragUpdate: _directionIsXAxis ? _handleDragUpdate : null,
      onHorizontalDragEnd: _directionIsXAxis ? _handleDragEnd : null,
      onVerticalDragStart: _directionIsXAxis ? null : _handleDragStart,
      onVerticalDragUpdate: _directionIsXAxis ? null : _handleDragUpdate,
      onVerticalDragEnd: _directionIsXAxis ? null : _handleDragEnd,
      behavior: widget.behavior,
      dragStartBehavior: widget.dragStartBehavior,
      child: content,
    );
  }
}
