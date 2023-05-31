import 'dart:core';

class Person implements Comparable<Person> {
  String name;
  int age;

  Person(this.name, this.age);

  Person copyWith({String? name, int? age}) {
    return Person(
      name ?? this.name,
      age ?? this.age,
    );
  }

  @override
  int compareTo(Person other) {
    return 0;
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}

void main() {
  DateTime dateTime = DateTime.now();

  Person han = Person('김삿갓', 20);

  List<Person> people = [
    Person('홍길동', 10),
    han,
  ];

  List<Person> people2 = [
    Person('홍길동', 10),
    han,
  ];

  print(people == people2);

  // cascade 연산자 : 실행한 레퍼런스를 리턴
  (people
    ..sort((a, b) => a.name.compareTo(b.name)))
    .forEach((element) { });

  print(people);  // 김1, 김2

  // List deep copy
  final otherPeople = [];
  people.forEach((person) {
    otherPeople.add(person.copyWith());
  });

  print(people[0].hashCode);
  print(otherPeople[0].hashCode);


}
