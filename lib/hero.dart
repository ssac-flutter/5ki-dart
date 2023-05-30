import 'package:dart_basic/sword.dart';

class Hero {
  // field
  // member variable (멤버 변수)
  // global variable (전역 변수)
  static int money = 100; // 정적 변수
  String name;
  int _hp;

  int get hp => _hp;

  set hp(int value) {
    if (value < 0) {
      throw Exception('마이너스 안돼');
    }

    _hp = value;
  }

  Sword? sword; // 칼이 있을 수도 있고 없을 수도 있다

  // 생성자 (생성하는 방법)
  Hero({
    this.name = '홍길동',
    int hp = 100,
    this.sword,
  }) : _hp = hp;

  factory Hero.clone(Hero hero) {
    return Hero(
      name: hero.name,
      hp: hero.hp,
      sword: hero.sword,
    );
  }

  Hero copyWith({String? name, int? hp}) {
    return Hero(
      name: name ?? this.name,
      hp: hp ?? this.hp,
    );
  }

  // 클래스 안에 작성한 함수 = 메서드
  void attack() {
    if (sword == null) {
      print('주먹으로 때린다');
    } else {
      print('${sword?.name}칼로 ${sword?.damage} 만큼 때린다');
    }
  }

  void run() {
    print('그냥 뛰었다');
  }

  void sleep() {
    hp = 100;
    // String interpolation
    print('$name 은 잠을 자고 회복했다');
  }

  @override
  String toString() {
    return 'Hero{name: $name, _hp: $_hp, sword: $sword}';
  }
}
