class Account extends Object {
  String owner;
  int balance;

  Account(this.owner, this.balance);

  void transfer(Account dest, int amount) {
    if (balance < amount) {
      throw Exception('잔액이 부족합니다.');
    }

    balance -= amount;
    dest.balance += amount;
  }
}

void main() {
  Account a = Account('홍길동', 1000);
  Account b = Account('한석봉', 0);

  a.transfer(b, 500);

  print(a.balance);
  print(b.balance);

  if (a.balance != 500) {
    throw Exception('잔액이 맞지 않습니다.');
  }
}

