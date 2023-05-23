import 'dart:math';

import 'sword.dart';

class Hero {
  // field
  // member variable (멤버 변수)
  // global variable (전역 변수)
  static int money = 100; // 정적 변수
  String name;
  int hp;
  Sword? sword; // 칼이 있을 수도 있고 없을 수도 있다

  // 생성자 (생성하는 방법)
  Hero({
    this.name = '홍길동',
    this.hp = 100,
    this.sword,
  });

  static void randomMoney() {
    Hero hero = Hero();

    hero.name = '홍길동';
    hero.hp = 100;
  }

  // 클래스 안에 작성한 함수 = 메서드
  void attack() {
    if (sword == null) {
      print('주먹으로 때린다');
    } else {
      print('${sword?.name}칼로 ${sword?.damage} 만큼 때린다');
    }
  }

  void run() {}

  void sleep() {
    hp = 100;
    // String interpolation
    print('$name 은 잠을 자고 회복했다');
  }
}
