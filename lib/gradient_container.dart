import 'package:flutter/material.dart';

// created a new custom widget

// center widget : centering the widget

// since we cant add a gradient color, we want to wrap the body with a container

// container : adding layout and styling
// container is not supported for const

// background gradient can be added using decoration parameter in container

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
