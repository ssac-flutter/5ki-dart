void main() {
  final string = 'H,E,L,L,O';

  print(string.split(''));

  RegExp regExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$');
  print(string.replaceAll('LL', 'XX'));


  print(regExp.hasMatch('aaaabbbb.com'));

  final buffer = StringBuffer('Dart');

  buffer
    ..write(' and ')
    ..write('Flutter');

  print(buffer);

  String a = '홍길동';
  a = '김삿갓';

  String b = '홍길동';
  String c = a + b;     // 홍길동홍길동

  for (int i = 0; i < 100; i++) {
    c = c + '$i';
  }
}