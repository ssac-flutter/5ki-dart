class Account {
  String owner;
  int balance;

  Account(this.owner, this.balance);

  void transfer(Account dest, int amount) {
    if (balance < amount) {
      throw Exception('잔액이 부족합니다');
    }
    dest.balance += amount;
    balance -= amount;
  }
}