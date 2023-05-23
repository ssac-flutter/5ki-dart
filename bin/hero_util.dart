import 'dart:math';

import 'hero.dart';


// static 하고 똑같다

// Top-level 변수
int heroMoney = 100;

// Top-level 함수
void setHeroRandomMoney() {
  Hero.money = Random().nextInt(1000);
}