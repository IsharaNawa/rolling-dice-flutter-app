import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const constructor
  const StyledText(this.text, {super.key});

  // final value after assignment
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}
