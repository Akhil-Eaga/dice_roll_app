import "package:flutter/material.dart";
import "package:roll_dice_app/styled_text.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  }); // this line is optional as each Dart class comes with its own constructor by default

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 1.0,
          colors: [
            Colors.yellow,
            Colors.green,
          ],
        ),
      ),
      child: const Center(
        child: StyledText()
      ),
    );
  }
}
