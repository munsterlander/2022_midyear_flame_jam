import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game/game.dart';

void main() {
  runApp(
    GameWidget<Agent001>(
      game: Agent001(),
    ),
  );
}
