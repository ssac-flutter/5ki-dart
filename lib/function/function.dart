class Person {
  int c = 10;

  // 메서드
  int add(int a, int b) {
    return a + b + c;
  }
}

// 순수 함수
int add(int a, int b) {
  return a + b;
}