import 'package:flutter/material.dart';

void main() {
  // MaterialApp widget should be inside the runApp function

  // home (named) argument should be defined for MaterialApp widget

  // since all the things in the MaterialApp, we can add const keyword
  // to improve runtime performance
  runApp(const MaterialApp(
    home: Text("Hello World!"),
  ));
}
