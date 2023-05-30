import 'package:dart_basic/hero.dart';

void main() {
  final heroes = <Hero>{};

  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  print(h1.toString());
  print(h2.hashCode);

  heroes.add(h1);
  print(heroes.length);

  heroes.remove(h2);
  print(heroes.length);
}