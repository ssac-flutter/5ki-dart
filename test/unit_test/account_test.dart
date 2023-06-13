import 'package:dart_basic/unit_test/account.dart';
import 'package:test/test.dart';

void main() {
  test('계좌 이체가 잘 동작해야 한다', () {
    // given 준비
    Account a = Account('홍길동', 1000);
    Account b = Account('한석봉', 0);

    // when (실행)
    a.transfer(b, 500);

    // then (검증)
    expect(a.balance, 500);
    expect(b.balance, 500);
  });

  test('잔액이 부족하면 예외가 발생해야 한다', () {
    // given 준비
    Account a = Account('홍길동', 0);
    Account b = Account('한석봉', 0);

    // when (실행)
    // then (검증)
    expect(() => a.transfer(b, 500), throwsException);
  });
}