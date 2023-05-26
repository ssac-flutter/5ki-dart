abstract interface class Drawable {
  void draw();
}

class House implements Drawable {
  @override
  void draw() {
    print('   /\\');
    print('  /  \\');
    print(' /    \\');
    print('/______\\');
    print('|      |');
    print('|  []  |');
    print('|______|');
  }
}

class Cat implements Drawable {
  @override
  void draw() {
    print(' /\\_/\\');
    print('( o.o )');
    print(' > ^ <');
  }
}

void main() {
  final house = House();
  house.draw();

  final cat = Cat();
  cat.draw();
}