import 'package:dart_basic/cleric.dart';
import 'package:dart_basic/hero.dart';

void main() {
  // list 리터럴 : <int>[]

  List<int> list = <int>[1, 2, 3];

  Iterable<int> iterable = <int>[1, 2, 3];

  // iterable = list;
  // list = iterable;

  print(list[0]);
  list[1] = 10;
  list.add(19);

  print(iterable.elementAt(0));

  print(list.hashCode);
  print(iterable.hashCode);

  // 써도 돼
  Object object = Cleric('name');
  Object num = 1;

  // print(num.runtimeType);

  // 절대 쓰면 안 되는 놈, 런타임에 결정됨, 추론 안 됨
  dynamic object2 = Cleric('name');
  dynamic num2 = 2;

  print(num2.runtimeType);

  num2 = 'aaaa';
  print(num2.runtimeType);

  Map<String, dynamic> person = {
    'name': '홍길동',
    'age': 10,
  };

  Map<String, Object> person2 = {
    'name': '홍길동',
    'age': 10,
  };

  print(Hero());
}
