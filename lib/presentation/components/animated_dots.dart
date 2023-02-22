import 'package:fitt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedDots extends StatefulWidget {
  const AnimatedDots({Key? key}) : super(key: key);

  @override
  AnimatedDotsState createState() => AnimatedDotsState();
}

class AnimatedDotsState extends State<AnimatedDots>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> first;
  late final Animation<double> second;
  late final Animation<double> third;

  AnimationStatusListener createStatusListener(AnimationController controller) {
    return (status) {
      switch (status) {
        case AnimationStatus.completed:
          controller.reset();
          controller.forward();
          break;
        case AnimationStatus.dismissed:
          break;
        case AnimationStatus.forward:
          break;
        case AnimationStatus.reverse:
          break;
      }
    };
  }

  @override
  void initState() {
    super.initState();
    const animationDuration = Duration(milliseconds: 700);

    controller = AnimationController(
      vsync: this,
      duration: animationDuration * 2,
      reverseDuration: animationDuration * 2,
    );

    first = TweenSequence<double>([
      TweenSequenceItem(tween: Tween<double>(begin: 1, end: 0), weight: 50),
      TweenSequenceItem(tween: Tween<double>(begin: 0, end: 1), weight: 50),
    ]).animate(controller);

    second = TweenSequence<double>([
      TweenSequenceItem(tween: Tween<double>(begin: 0.5, end: 1), weight: 25),
      TweenSequenceItem(tween: Tween<double>(begin: 1, end: 0), weight: 50),
      TweenSequenceItem(tween: Tween<double>(begin: 0, end: 0.5), weight: 25),
    ]).animate(controller);

    third = TweenSequence<double>([
      TweenSequenceItem(tween: Tween<double>(begin: 0, end: 1), weight: 50),
      TweenSequenceItem(tween: Tween<double>(begin: 1, end: 0), weight: 50),
    ]).animate(controller);

    controller.addStatusListener(createStatusListener(controller));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    const dot = Text(
      '.',
      style: TextStyle(
        fontSize: 25,
        color: AppColors.kOxford60,
        height: .2,
      ),
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeTransition(
          opacity: first,
          child: dot,
        ),
        const SizedBox(width: 5),
        FadeTransition(
          opacity: second,
          child: dot,
        ),
        const SizedBox(width: 5),
        FadeTransition(
          opacity: third,
          child: dot,
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
