
import 'package:dart_basic/hero.dart';

class Slime {
  int hp = 50;
  final String suffix;
  final int level = 10;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix가 공격했다');
  }
}

class PoisonSlime extends Slime {
  int _poisonCount = 5;   // -1

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    // 보통 공격
    super.attack(hero);

    if (_poisonCount > 0) {
      print('추가로 독포자를 살포했다');

      hero.hp = hero.hp * 4 ~/ 5;

      _poisonCount--;
    }
  }

}