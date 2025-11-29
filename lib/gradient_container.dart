import "package:flutter/material.dart";
import "package:roll_dice_app/styled_text.dart";

// keyword `const` is used for compile-time constants
// keyword `final` is used for run-time constants

// `const` is better for performance since the value is locked in at compile-time
// `final` is better used when the value is determined dynamically at run time but remains unchanged afterwards
const gradientAlignment = Alignment.center;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  }); // this line is optional as each Dart class comes with its own constructor by default

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: gradientAlignment,
          radius: 1.0,
          colors: [
            Colors.yellow,
            Colors.green,
          ],
        ),
      ),
      child: const Center(
        child: StyledText("Hello world!")
      ),
    );
  }
}
