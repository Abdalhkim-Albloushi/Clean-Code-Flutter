import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({
    required this.child,
    super.key,
    this.statAfter = 400,
    this.duringTimeShowing = 200,
  });

  final Widget child;
  final int statAfter, duringTimeShowing;

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        'opacity',
        Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: duringTimeShowing),
      );

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: statAfter),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, Widget? w) => Opacity(
        opacity: value.get('opacity'),
        child: w,
      ),
    );
  }
}
