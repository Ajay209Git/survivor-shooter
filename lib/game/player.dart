import 'package:flame/components.dart';

class Player extends SpriteComponent {
  Player() : super(size: Vector2(64.0, 64.0));

  @override
  Future<void> onLoad() async {
    sprite = await loadSprite('player.png');
    position = Vector2(100, 100);
  }

  @override
  void update(double dt) {
    // Update player logic here
    super.update(dt);
  }
}