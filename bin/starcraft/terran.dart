abstract interface class Bionic {}

abstract interface class Mechanic {}

abstract interface class Repairable {}

abstract interface class Healable {}

abstract class Unit {}

class Tank extends Unit implements Mechanic {}

class Scv extends Unit implements Mechanic, Bionic, Repairable, Healable {
  void repair(Repairable repairable) {
    if (repairable is Barracks) {
      return;
    }

    // 고치고
  }
}

class CommandCenter implements Repairable {}

class Barracks implements Repairable {}

class Medic extends Unit {
  void heal(Healable bionic) {}
}

class Mineral {
  int count = 1000000;

  void draw() {
    if (count < 50000) {
      print('겁나 많아보이는 미네랄');
    } else if (count < 30000) {
      print('조금 적어보이는 미네랄');
    }
  }
}


class Zegling implements Bionic, Healable {

}

void main() {
  Game game = Game();

  final scv = Scv();
  final medic = Medic();

  medic.heal(scv);

  game.addUnit(scv);
  game.addUnit(medic);

}

class Game {
  // 모든 유닛
  List<Unit> allUnits = [];

  // 부대
  List<Unit> units = [];

  void addUnit(Unit unit) {
    if (units.length < 12) {
      units.add(unit);
    }
  }

  void automaticRecovery() {
    allUnits.forEach((e) {
      if (e is Shield) {
        (e as Shield).recoveryShield();
      }
    });
  }
}

abstract interface class Shield {
  void recoveryShield();
}

class Zealot implements Bionic, Shield {
  @override
  void recoveryShield() {
    // 1만큼
  }

}

class Dragun implements Mechanic, Shield {
  @override
  void recoveryShield() {
    // 2만큼
  }

}