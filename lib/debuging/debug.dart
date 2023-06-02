import 'package:dart_basic/hero.dart';

void main() {
  final heroes = <Hero>[];

  final h1 = Hero(name: '슈퍼맨');
  final h2 = Hero(name: '슈퍼맨');

  heroes.add(h1);
  heroes.add(h2);

  someError2();
}

void someError() {
  int i = 10;
  i = 20;

  throw Exception('Error');
}

void someError2() {
  try {
    someError();
  } catch (e) {
    rethrow;
  }
}
