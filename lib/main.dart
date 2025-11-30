import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "Avenir"),
      home: Scaffold(
        body: GradientContainer(colors: [
          Colors.yellow,
          Colors.green,
        ]),
      ),
    ),
  );
}
