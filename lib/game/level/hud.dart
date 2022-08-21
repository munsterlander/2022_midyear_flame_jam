import 'package:agent_001/game/game.dart';
import 'package:agent_001/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';

class Hud extends PositionComponent with HasGameRef<Agent001Game> {
  Hud({
    super.position,
    super.size,
    super.scale,
    super.angle,
    super.anchor,
    super.children,
    super.priority = 5,
  }) {
    positionType = PositionType.viewport;
  }

  final _healthTextComponent = TextComponent(text: '100%');

  @override
  Future<void>? onLoad() {
    // decorator = Rotate3DDecorator(perspective: 0.01, angleY: 0.01);

    _healthTextComponent.textRenderer = TextPaint(
      style: const TextStyle(
        fontFamily: 'PressStartP2',
        fontSize: 10,
      ),
    );

    _healthTextComponent.position = Vector2.all(2);

    add(
      NineTileBoxComponent(
        nineTileBox: NineTileBox(gameRef.getSprite(SpriteIds.button)!),
        position: gameRef.size - Vector2.all(20),
        anchor: Anchor.bottomRight,
        children: [_healthTextComponent],
        size: _healthTextComponent.size + Vector2.all(3),
      ),
    );

    gameRef.playerData.health.addListener(onHealthChanged);
    return super.onLoad();
  }

  @override
  void onRemove() {
    gameRef.playerData.health.removeListener(onHealthChanged);
    super.onRemove();
  }

  void onHealthChanged() {
    _healthTextComponent.text = '${gameRef.playerData.health.value.toInt()}%';
  }
}