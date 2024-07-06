import 'package:flutter/material.dart';

// custom widget imports
import 'package:rolling_dice/gradient_container.dart';

void main() {
  // MaterialApp widget should be inside the runApp function

  // home (named) argument should be defined for MaterialApp widget

  // since all the things in the MaterialApp, we can add const keyword
  // to improve runtime performance

  // scaffold widget : wrapper widget
  // Implements the basic Material Design visual layout structure.
  // This class provides APIs for showing drawers and bottom sheets.

  runApp(MaterialApp(
    home: Scaffold(
        body: GradientContainer([
      Color.fromARGB(255, 49, 11, 125),
      Color.fromARGB(255, 54, 19, 152)
    ])),
  ));
}
