import 'hero.dart';
import 'slime.dart';

void main() {
  final poisonSlime = PoisonSlime('A');
  final hero = Hero();

  poisonSlime.attack(hero);
  print(hero.hp);

  poisonSlime.attack(hero);
  print(hero.hp);

  poisonSlime.attack(hero);
  print(hero.hp);

  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
}