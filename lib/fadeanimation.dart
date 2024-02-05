 import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
class fadeanimation  extends StatelessWidget {
  final double delay;
  final Widget child;

  const fadeanimation({Key key,this.delay,this.child}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
      delay:Duration(milliseconds: (500 * delay).round()),
      duration:


    );
  }
}
