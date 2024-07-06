import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';

// created a new custom widget

// center widget : centering the widget

// since we cant add a gradient color, we want to wrap the body with a container

// container : adding layout and styling
// container is not supported for const

// background gradient can be added using decoration parameter in container

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
