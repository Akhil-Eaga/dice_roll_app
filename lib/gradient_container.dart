import "package:flutter/material.dart";
import "package:roll_dice_app/styled_text.dart";

// keyword `const` is used for compile-time constants
// keyword `final` is used for run-time constants

// `const` is better for performance since the value is locked in at compile-time
// `final` is better used when the value is determined dynamically at run time but remains unchanged afterwards
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    required this.colors, // named params are optional by default, so we use `required` to make it mandatory
  });

  final List<Color> colors;
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    activeDiceImage = "assets/images/dice-4.png";
    print("Dice roll invoked");
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ), // Used for space between the dice image and button
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey.shade800,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              ),
              onPressed: rollDice,
              child: const Text(
                "Roll Dice",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
