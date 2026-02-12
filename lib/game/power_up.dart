// power_up.dart

// This file contains the power-up system and defines various power-up types.

class PowerUp {
  final String type;
  final int duration;

  PowerUp(this.type, this.duration);

  void apply() {
    // Logic for applying the power-up effect
    print('Applying power-up: ${type} for $duration seconds');
  }
}

class PowerUpTypes {
  static const String speedBoost = 'Speed Boost';
  static const String shield = 'Shield';
  static const String doubleDamage = 'Double Damage';
  static const String healthRestore = 'Health Restore';
}

// Example usage:
// PowerUp speed = PowerUp(PowerUpTypes.speedBoost, 10);
// speed.apply();