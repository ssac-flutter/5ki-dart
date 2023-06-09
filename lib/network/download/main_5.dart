// 연습문제 3, 4를 활용하여
//
// 임의의 3개의 이미지를 순차적으로 다운로드 받는 시간과, 병렬로 동시에 다운로드 받는 시간을 비교해 보시오
import 'package:dart_basic/network/download/main_3_4.dart';

void main() async {
  var stopwatch = Stopwatch()
    ..start();

  await saveImage(
      'https://image.ytn.co.kr/general/jpg/2023/0426/202304260900018538_d.jpg',
      'iu.jpg');
  await saveImage(
      'https://file2.nocutnews.co.kr/newsroom/image/2023/05/03/202305031714287586_0.jpg',
      'iu2.jpg');
  await saveImage(
      'https://contents-cdn.viewus.co.kr/image/2023/05/CP-2022-0020/image-cfbba151-f6de-4390-8337-f23326a80c1f.jpeg',
      'iu3.jpg');

  print('순차 소요시간 : ${stopwatch.elapsed}');

  stopwatch = Stopwatch()
    ..start();

  List<Future> futures = [
    saveImage(
        'https://image.ytn.co.kr/general/jpg/2023/0426/202304260900018538_d.jpg',
        'iu.jpg'),
    saveImage(
        'https://file2.nocutnews.co.kr/newsroom/image/2023/05/03/202305031714287586_0.jpg',
        'iu2.jpg'),
    saveImage(
        'https://contents-cdn.viewus.co.kr/image/2023/05/CP-2022-0020/image-cfbba151-f6de-4390-8337-f23326a80c1f.jpeg',
        'iu3.jpg'),
  ];

  await Future.wait(futures);
  print('병렬 소요시간 : ${stopwatch.elapsed}');
}