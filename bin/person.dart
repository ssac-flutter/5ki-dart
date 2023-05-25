class Person {
  String name;

  Person(this.name);
}

void main() {



  final persons = <Person>[];

  final hong = Person('홍길동');
  final han = Person('한석봉');

  persons.add(hong);
  persons.add(han);

  for (final person in persons) {
    print(person.name);
  }

  // 2-3
  final personList = <String, int>{
    '홍길동': 20,
    '한석봉': 25,
  };

  personList[hong.name] = 20;
  personList[han.name] = 50;

  personList.update(han.name, (value) => 100);


  personList.forEach((key, value) {
    print('$key: $value');
  });
}
