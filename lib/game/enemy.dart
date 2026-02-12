class Enemy {
  String type;
  double spawnX;
  double spawnY;

  Enemy(this.type, this.spawnX, this.spawnY);

  void spawn() {
    // Logic to place enemy at spawn location
    print('Spawning enemy of type $type at ($spawnX, $spawnY)');
  }
}

class EnemySpawner {
  List<Enemy> enemies = [];

  void spawnEnemy(String type) {
    double spawnX = ...; // Logic to determine spawn position X
    double spawnY = ...; // Logic to determine spawn position Y
    Enemy newEnemy = Enemy(type, spawnX, spawnY);
    newEnemy.spawn();
    enemies.add(newEnemy);
  }
}