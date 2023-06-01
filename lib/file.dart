import 'dart:io';

void main() {
  try {
    fileWrite();
  } catch (e) {
    print('파일 경로가 잘못되었습니다');
  }
}

void fileRead() {
  // 파일 열기
  final file = File('savedfdfdfdf.txt');

  final text = file.readAsStringSync();
  print(text);
}

void fileWrite() {
  final file = File('save.txt');

  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
}