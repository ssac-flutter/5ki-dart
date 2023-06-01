enum KeyType {
  padlock, // 1,024회
  button, // 10,000회
  dial, // 30,000회
  finger, // 1,000,000회
  littleTest, // 5회
}

class StrongBox<T> {
  T? _content;
  int _keyUseCount = 0;
  final int _keyUseLimit;

  StrongBox(KeyType keyType) : _keyUseLimit = _getKeyLimit(keyType);

  void put(T item) {
    _content = item;
  }

  T? get() {
    if (_keyUseCount < _keyUseLimit) {
      _keyUseCount++;
      return _content;
    } else {
      return null;
    }
  }

  static int _getKeyLimit(KeyType keyType) {
    switch (keyType) {
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
      case KeyType.littleTest:
        return 5;
      default:
        return 0;
    }
  }
}

void main() {
  StrongBox<String> stringBox = StrongBox<String>(KeyType.padlock);

  stringBox.put('String값을 넣는다');

  String? getString = stringBox.get();
  print(getString);

  // 다른 타입을 저장하려고 하면 컴파일 오류 발생
  // strongBox.put(42);
  // 컴파일 오류: 타입 불일치

  StrongBox<int> intBox = StrongBox<int>(KeyType.padlock);
  intBox.put(42);
  int? getInt = intBox.get();
  print(getInt); // 출력: 42

  // (ENUM) 열쇠 종류를 받아 사용 횟수 초과 전까지 null 리턴

  StrongBox<String> strongBox = StrongBox<String>(KeyType.padlock);

  // 인스턴스를 저장
  strongBox.put('열쇠 사용');

  // 열쇠의 사용 횟수에 도달하기 전까지 인스턴스를 얻음
  for (int i = 0; i < 1025; i++) {
    String? getData = strongBox.get();
    if (getData == null) {
      print('열쇠 사용 횟수 초과!!');
      break;
    }
    print('$getData 횟수 : ${i + 1}회');
  }
}