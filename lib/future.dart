void main() async {
  Stopwatch stopwatch = Stopwatch()..start();

  getInt1();
  getInt2();
  getInt3();
  getInt4();
  getInt5();

  // final List<int> results = [
  //   await getInt1(),
  //   await getInt2(),
  //   await getInt3(),
  //   await getInt4(),
  //   await getInt5(),
  // ];

  print(stopwatch.elapsed);

  // Future 연습
  await Future.delayed(Duration(seconds: 5), () {
    print('5초 끝');
  });

  // 일반 콜백
  // try {
  //   saveDb(1111)
  //       .then((value) => print(value))
  //       .catchError((e) => throw Exception(e))
  //       .then((value) => print('에러 이후'));
  // } catch (e) {
  //   print(e);
  // }

  try {
    await saveDb(1111);
  } catch(e) {
    print('에러가 발생했어요');
  }

}

// 2초후에 0 리턴
Future<int> saveDb(user) async {
  await Future.delayed(Duration(seconds: 2));

  if (user == 1111) {
    throw Exception('error');
  }
  // await Future.error(Exception('error'));
  print('에러 통과');
  return 0;
}

Future<int> getInt1() async {
  await Future.delayed(Duration(seconds: 1));
  return 1;
}
Future<int> getInt2() async {
  await Future.delayed(Duration(seconds: 1));
  return 2;
}
Future<int> getInt3() async {
  await Future.delayed(Duration(seconds: 1));
  return 3;
}
Future<int> getInt4() async {
  await Future.delayed(Duration(seconds: 1));
  return 4;
}
Future<int> getInt5() async {
  await Future.delayed(Duration(seconds: 1));
  return 5;
}