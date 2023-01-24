import 'dart:async';

import 'package:flutter/material.dart';

class CustomAnimator extends StatefulWidget {
  final CustomTransform customTransform;
  final Widget child;
  final Duration time;
  final Curve curve;

  CustomAnimator({required this.customTransform, required this.child, required this.time, required this.curve});

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<CustomAnimator> with SingleTickerProviderStateMixin {
  Timer? timer;
  AnimationController? animationController;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: Duration(milliseconds: 290), vsync: this);
    animation = CurvedAnimation(parent: animationController!, curve: widget.curve); //Curves.easeInOut
    timer = Timer(widget.time, animationController!.forward);
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation!,
      child: widget.child,
      builder: (BuildContext context, Widget? child) {
        return loadWidget(animation!.value, widget.customTransform, child);
      },
    );
  }

  Widget loadWidget(value, customTransform, child) {
    Opacity opacity;

    switch (customTransform) {
      case CustomTransform.opacity:
        opacity = new Opacity(
          opacity: value - 1,
          child: new Transform.translate(
            offset: Offset(0.0, (1 - value) * 5),
            child: child,
          ),
        );
        break;
      case CustomTransform.translate:
        opacity = new Opacity(
          opacity: value,
          child: new Transform.translate(
            offset: Offset(0.0, (1 - value) * 5),
            child: child,
          ),
        );
        break;
      case CustomTransform.rotation:
        opacity = new Opacity(
          opacity: value,
          child: new Transform.rotate(
            angle: value,
            child: child,
          ),
        );
        break;
      case CustomTransform.scale:
        opacity = new Opacity(
          opacity: value,
          child: new Transform.scale(
            scale: value,
            child: child,
          ),
        );
        break;
      default:
        opacity = new Opacity(
          opacity: value,
          child: new Transform.translate(
            offset: Offset(0.0, (1 - value) * 5),
            child: child,
          ),
        );
    }

    return opacity;
  }
}

enum CustomTransform { opacity, translate, rotation, scale }

Timer? timer;
Duration duration = Duration();

waitTime({required int microseconds}) {
  if (timer == null || !timer!.isActive) {
    timer = Timer(Duration(microseconds: microseconds), () {
      duration = Duration();
    });
  }
  duration += Duration(milliseconds: 180);
  return duration;
}
