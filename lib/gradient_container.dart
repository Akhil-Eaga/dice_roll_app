import "package:flutter/material.dart";
import "package:roll_dice_app/styled_text.dart";

// keyword `const` is used for compile-time constants
// keyword `final` is used for run-time constants

// `const` is better for performance since the value is locked in at compile-time
// `final` is better used when the value is determined dynamically at run time but remains unchanged afterwards
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors, // named params are optional by default, so we use `required` to make it mandatory
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: Center(
        child: Image.asset("assets/images/dice-2.png", width: 200),
      ),
    );
  }
}
