import 'package:dart_basic/hero.dart';

void main() {
  final List<Hero> heroes = [];

  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  heroes.add(h1);
  print(heroes.length);

  heroes.add(h2);
  print(heroes.length);

  print(h1 == h2);
}