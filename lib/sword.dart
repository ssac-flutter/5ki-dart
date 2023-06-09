class Sword implements Comparable<Sword> {
  String name;
  int damage;

  // named parameter (이름 있는 인자), 옵션
  Sword({
    required this.name,
    required this.damage,
  });

  // 모델 클래스
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Sword && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'Sword{name: $name, damage: $damage}';
  }

  // Comparable.sort(sword1, sword2)에 대응
  @override
  int compareTo(Sword other) {
    return name.compareTo(other.name);
  }
}
