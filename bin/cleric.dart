import 'dart:math';

class Cleric {
  static const maxHp = 50;
  static const maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric(
    this.name, {
    this.hp = maxHp,
    this.mp = maxMp,
  });

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int sec) {
    final prevMp = mp;

    final recoveryMp = sec + Random().nextInt(3);
    final afterMp = mp + recoveryMp;

    mp = min(afterMp, maxMp);

    return afterMp - prevMp;
  }
}
