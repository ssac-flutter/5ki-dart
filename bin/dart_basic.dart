import 'hero.dart';
import 'hero_util.dart';
import 'sword.dart';

void main() {
  // 새로운 인스턴스
  final hero1 = Hero(name: '슈퍼맨', hp: 100);
  hero1.attack();

  final hero2 = hero1;

  hero2.hp = 200;

  print(hero1.hp);
  print(hero2.hp);

  final sword = Sword(name: '불의검', damage: 100);
  hero1.sword = sword;

  hero1.attack();

  final hero5 = Hero();
  final hero6 = Hero(name: '토르');
  final hero7 = Hero(hp: 50);
  final hero8 = Hero(name: '토르', hp: 50);
  final hero9 = Hero(sword: sword);
  final hero10 = Hero(name: '토르', hp: 50, sword: sword);

  print(Hero.money);

  // primary constructor
  // final slime = Slime(hp: 50);

  Hero.money = 200;
  heroMoney = 100;
  setHeroRandomMoney();
}
