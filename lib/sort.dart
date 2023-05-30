import 'package:dart_basic/hero.dart';

void main() {
  final heroes = [
    Hero(name: '홍길동'),
    Hero(name: '이순신'),
    Hero(name: '김삿갓'),
  ];

  // 방법 1.
  heroes.sort((a, b) => a.name.compareTo(b.name));

  print(heroes.reversed);

  // // 방법 2.
  // heroes.sort((a, b) => Comparable.compare(a.name, b.name));
  //
  // // 방법 3.
  // heroes.sort(compareHero);

  print(heroes);
}

int compareHero(Hero hero1, Hero hero2) {
  return hero1.name.compareTo(hero2.name);
}
