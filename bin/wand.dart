class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  });
}

class Wizard {
  String _name;
  int _hp;
  Wand? _wand;

  // getter
  String get name => _name;
  int get hp => _hp;
  Wand? get wand => _wand;

  // setter
  set name(String name) {
    if (name.length < 3) {
      throw Exception('이름은 3글자 이상이어야 합니다.');
    }

    _name = name;
  }

  set hp(int hp) {
    if (hp < 0) {
      hp = 0;
      return;
    }

    _hp = hp;
  }

  set wand(Wand? wand) {
    if (wand != null && wand.power < 0) {
      throw Exception('지팡이는 null일 수 없고, 마법력은 0 이상이어야 합니다.');
    }

    _wand = wand;
  }

  Wizard({
    required String name,
    required int hp,
    Wand? wand,
  })  : _name = name,
        _hp = hp,
        _wand = wand;
}

void main() {
  Wizard wizard = Wizard(name: '홍길', hp: 100);

  print(wizard.name);
  print(wizard.hp);
  print(wizard.wand);

  wizard.name = '한석';
  wizard.hp = 200;
  wizard.wand = Wand(name: '나무 지팡이', power: 100);

  print(wizard.name);
  print(wizard.hp);
  print(wizard.wand);
}

