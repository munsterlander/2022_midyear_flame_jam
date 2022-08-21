import 'package:agent_001/game/game.dart';
import 'package:agent_001/game/ui/button.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  // An unique identified for this overlay.
  static const id = 'MainMenu';

  // Reference to parent game.
  final Agent001Game gameRef;

  const MainMenu(this.gameRef, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 500,
        height: 500,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/dialog.png'),
              fit: BoxFit.cover,
            ),
          ),
          child:
              null /* ImageTextButton(
            cardText: 'Agent 001',
            buttonText: 'Play',
            onPressed: () {},
          ) */
          ,
        ),
      ),
    );
  }
}