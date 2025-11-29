import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello world!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,

      ),
    );
  }
}
