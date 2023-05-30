import 'hero.dart';

void main() {
  Hero hero = Hero(name: '홍길동', hp: 100);

  List<Hero> heroes = [
    hero,
  ];

  hero.name = '한석봉';

  print(heroes[0].name);  // ?


  // // 리터럴
  // List<int> subjects = [10, 50, 100, 100, 50];
  //
  // // iterator 활용법
  // final iterator = subjects.iterator;
  // while (iterator.moveNext()) {
  //   print(iterator.current);
  // }
  //
  // final extras = [10, 20, 30];
  //
  // // subjects.add(0);
  // // subjects.add(0);
  // // subjects.add(0);
  // // subjects.addAll(extras);
  //
  // print(subjects);
  //
  // print([...subjects, 0, 0, 0, ...extras]);
  //
  // // 익명 함수
  // subjects.forEach(aaaa);
  //
  // Set<int> lottoSet = {1, 2, 3, 4};
  //
  // print(lottoSet.contains(1)); // true
  // print(lottoSet.contains(5)); // false
  //
  // Map<String, dynamic> gildong = {
  //   'name': '홍길동',
  //   'id': 0,
  //   'age': 20,
  // };
  //
  // gildong.entries.forEach((element) {
  //   print(element.value);
  // });
  //
  // List<Map<String, dynamic>> students = [
  //   {
  //     'name': '홍길동',
  //     'id': 0,
  //     'age': 20,
  //   },
  //   {
  //     'name': '한석봉',
  //     'id': 1,
  //     'age': 22,
  //   },
  // ];


}

void aaaa(int num) {
  print(num);
}
