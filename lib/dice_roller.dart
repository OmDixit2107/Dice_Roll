import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rolldice() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceroll.png';
    });

    // print("changing image");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // Ensures the column takes up only as much space as needed
      mainAxisAlignment:
          MainAxisAlignment.center, // Centers the children vertically
      children: [
        Image.asset(activeDiceImage, width: 200),
        const SizedBox(height: 25),
        TextButton(
          onPressed: rolldice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        )
      ],
    );
  }
}
