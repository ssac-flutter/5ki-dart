import 'package:dart_basic/network/download/main_3_4.dart';

void main() async {
  print('다운로드 시작');

  final stopwatch = Stopwatch()..start();
  final file = await saveImage('https://alimipro.asdfasdf/favicon.icoaaaaa', '한소희.png');
  stopwatch.stop();

  print('다운로드 끝');
  print('===============');

  print('소요시간 : ${stopwatch.elapsed}');
  print('용량 : ${await file.length()}bytes');
}
