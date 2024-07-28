import 'package:dice_roll/StyledText.dart';
import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  //{ } inside curly braces they are named arguements which are optional
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
    // throw UnimplementedError();
  }
}
