import "dart:math";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  late List<MemoryImage> diceImages;
  int activeDiceImage = 1;

  @override
  void initState() {
    super.initState();
    _loadDiceImages();

    // app opens with a random dice roll by default
    activeDiceImage = randomizer.nextInt(6) + 1;
  }

  Future<void> _loadDiceImages() async {
    diceImages = [];
    for (int diceIndex = 1; diceIndex <= 6; diceIndex++) {
      final data = await rootBundle.load("assets/images/dice-$diceIndex.webp");
      diceImages.add(MemoryImage(data.buffer.asUint8List()));
    }
    setState(() {}); // Trigger rebuild when loaded
  }

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (diceImages.isEmpty) {
      return const CircularProgressIndicator();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: diceImages[activeDiceImage - 1], width: 200),
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
