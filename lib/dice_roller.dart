import "dart:math";
import "package:flutter/material.dart";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDiceImage = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (int diceIndex = 1; diceIndex <= 6; diceIndex++) {
        precacheImage(
          AssetImage("assets/images/dice-$diceIndex.webp"),
          context,
        );
      }
    });  

    // app opens with a random dice roll by default
    activeDiceImage = randomizer.nextInt(6) + 1;
  }

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$activeDiceImage.webp", width: 200),
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
    );
  }
}
