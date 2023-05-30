import 'package:dart_basic/hero.dart';

void main() {
  final h1 = Hero(name: '홍길동');
  final h2 = Hero.clone(h1);
  final h3 = h1.copyWith(hp: 200);

  print(h1.hashCode);
  print(h2.hashCode);
  print(h3);
}