import 'package:flutter/material.dart';

import 'dart:math';

Random randomGenerator = Random();

// add the statfulwidget here
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override

  // this needs a state of this object
  // therefore we should create another class for this
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// this is a private class
// behaves almost like a stateless widget
// but maintains the state
class _DiceRollerState extends State<DiceRoller> {
  int currentImageNumber = 2;

  void rollDice() {
    // change the image and re-render it
    setState(() {
      currentImageNumber = randomGenerator.nextInt(6) + 1;
    });
  }

  // return the widget as a stateless widget
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentImageNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
