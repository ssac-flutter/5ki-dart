import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  String toString() {
    return 'Trader{name: $name, city: $city}';
  }
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  print('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오');
  ((transactions.where((e) => e.year == 2011).toList())
        ..sort((a, b) => a.value.compareTo(b.value)))
      .map((e) => e.trader.name)
      .forEach((e) => print(e));

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  print('');
  print('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오');
  transactions.map((e) => e.trader.city).toSet().forEach(print);

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  print('');
  print('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오');
  ((transactions.where((e) => e.trader.city == 'Cambridge').toList())
        ..sort((a, b) => a.trader.name.compareTo(b.trader.name)))
      .forEach(print);

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  print('');
  print('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오');
  ((transactions.map((e) => e.trader.name).toSet().toList())
        ..sort((a, b) => a.compareTo(b)))
      .forEach(print);

  final nums = [5, 4, 1, 2];
  nums.where((e) => e % 2 == 0).toList().sort();
  print(nums);

  // 5. 밀라노에 거래자가 있는가?
  print('');
  print('5. 밀라노에 거래자가 있는가?');
  print(transactions.any((e) => e.trader.city == 'Milan'));

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  print('');
  print('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오');
  transactions.where((e) => e.trader.city == 'Cambridge').forEach(print);

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  print('');
  print('7. 전체 트랜잭션 중 최대값은 얼마인가?');
  print(transactions.map((e) => e.value).fold<int>(0, max));

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  print('');
  print('8. 전체 트랜잭션 중 최소값은 얼마인가?');
  print(transactions.map((e) => e.value).reduce(min));

}



// 복사용
final String json = '''{
 "collectionChartDataList": [
   {
     "collectionName": "collectionName",
     "collectionSalePrice": null
   },
   {
     "collectionName": "collectionName",
     "collectionSalePrice": [
       {
         "price": 59.75,
         "cvtDatetime": "2023-03-26T08:08:35"
       },
       {
         "price": 60.00,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
}''';

