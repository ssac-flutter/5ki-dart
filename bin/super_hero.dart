import 'hero.dart';

class SuperHero extends Hero {
  SuperHero({required super.name, required super.hp});

  @override
  void run() {
    super.run();
    print('신나게 뛰었다');
  }
}

// void main() {
//   final hero = Hero();
//   hero.run();
//
//   final superHero = SuperHero();
//   superHero.run();
// }


abstract interface class CleaningService {
  int get hp;

  void wash();
  void wash2();
}

class SuwonService implements CleaningService {
  @override
  int get hp => 10;

  @override
  void wash() {
    // TODO: implement wash
  }

  @override
  void wash2() {
    // TODO: implement wash2
  }

}