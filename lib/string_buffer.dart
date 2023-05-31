void main() {
  // final stopWatch = Stopwatch()..start();
  //
  // // var string = '';
  // var string = StringBuffer('');
  // for(int i = 0; i < 100000; i++) {
  //   string.write(i.toString());
  // }
  //
  // print(stopWatch.elapsed);

  String greeting = 'Hello';

  print(greeting.replaceAll('H', 'J'));
  print(greeting);

  int luckyNumber = 13;
  int luckyNumber2 = luckyNumber;
  luckyNumber2 = 12;

  print(luckyNumber.hashCode);
  print(luckyNumber2.hashCode);

}