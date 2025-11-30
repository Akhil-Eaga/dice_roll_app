import "package:flutter/material.dart";

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    setState(() {
      activeDiceImage = "assets/images/dice-4.png";
    }); 
    print("Dice roll invoked");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
