// bullet.dart

class Bullet {
  double x;
  double y;
  double speed;
  double direction;

  Bullet(this.x, this.y, this.speed, this.direction);

  void update() {
    x += speed * cos(direction);
    y += speed * sin(direction);
  }

  @override
  String toString() {
    return 'Bullet at ($x, $y)';
  }
}

void main() {
  Bullet bullet = Bullet(0, 0, 5, 45);
  bullet.update();
  print(bullet);
}