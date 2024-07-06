import 'package:flutter/material.dart';

void main() {
  // MaterialApp widget should be inside the runApp function

  // home (named) argument should be defined for MaterialApp widget

  // since all the things in the MaterialApp, we can add const keyword
  // to improve runtime performance

  // scaffold widget : wrapper widget
  // Implements the basic Material Design visual layout structure.
  // This class provides APIs for showing drawers and bottom sheets.

  runApp(const MaterialApp(
    home: Scaffold(
      body: Text("Hello World!"),
    ),
  ));
}
