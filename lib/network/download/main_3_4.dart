import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

Future<Uint8List> downloadImage(String url) async {
  final http.Response response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  return await File(fileName).writeAsBytes(bytes);
}

Future<File> saveImage(String url, String fileName) async {
  Uint8List bytes;
  try {
    bytes = await downloadImage(url);
  } catch (e) {
    bytes = await downloadImage(
        'https://www.cosmorning.com/data/photos/20230104/art_16747246576108_51a296.jpg');
  }
  return await saveFile(bytes, fileName);
}

void main() async {
  print('다운로드 시작');

  final stopwatch = Stopwatch()..start();
  final file = await saveImage('https://alimipro.com/favicon.ico', 'icon.ico');
  stopwatch.stop();

  print('다운로드 끝');
  print('===============');

  print('소요시간 : ${stopwatch.elapsed}');
  print('용량 : ${await file.length()}bytes');
}
