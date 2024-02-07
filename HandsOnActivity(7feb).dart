// PRACTICAL 1

class Character {
  String name;
  int health;

  Character(this.name, this.health);

  void displayInfo() {
    print('Name: $name , Health: $health');
  }
}

mixin Logger {
  void debug(String message) {
    print('DEBUG: $message');
  }

  void info(String message) {
    print('INFO: $message');
  }

  void warning(String message) {
    print('WARNING: $message');
  }

  void error(String message) {
    print('ERROR: $message');
  }
}

class Warrior extends Character with Logger {
  int strength;
  Warrior(String name, int health, this.strength) : super(name, health);

  void warriorAttack() {
    info(' ${name} has strength $strength');
  }
}

class Mage extends Character with Logger {
  int Power;
  Mage(String name, int health, this.Power) : super(name, health);

  void mageAttack() {
    info(' ${name} has spell with power $Power');
  }
}

class Rogue extends Character with Logger {
  int magic;
  Rogue(String name, int health, this.magic) : super(name, health);

  void rogueAttack() {
    info(' ${name} has magic points $magic');
  }
}

void main() {
  var warrior = Warrior('shejal', 10, 80);
  warrior.displayInfo();
  warrior.warriorAttack();

  var mage = Mage('xyz', 67, 34);
  mage.mageAttack();

  var rogue = Rogue('abc', 98, 85);
  rogue.rogueAttack();
}
