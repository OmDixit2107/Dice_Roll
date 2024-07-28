import 'package:dice_roll/Gradient_Container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Colors.deepPurple, Colors.indigo]),
      ),
    ),
  );
}
