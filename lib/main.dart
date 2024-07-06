import 'package:flutter/material.dart';

void main() {
  // MaterialApp widget should be inside the runApp function

  // home (named) argument should be defined for MaterialApp widget

  // since all the things in the MaterialApp, we can add const keyword
  // to improve runtime performance

  // scaffold widget : wrapper widget
  // Implements the basic Material Design visual layout structure.
  // This class provides APIs for showing drawers and bottom sheets.

  // center widget : centering the widget

  // since we cant add a gradient color, we want to wrap the body with a container

  // container : adding layout and styling
  // container is not supported for const

  // background gradient can be added using decoration parameter in container

  runApp(const MaterialApp(
    home: Scaffold(body: GradientContainer()),
  ));
}

// created a new custom widget

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 49, 11, 125),
            Color.fromARGB(255, 54, 19, 152)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "Hello World!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
