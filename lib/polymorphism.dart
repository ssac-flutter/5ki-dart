abstract interface class Drawable {
  void draw();
}

abstract interface class Moveable {
  void move(int seconds);
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

class Cat implements Drawable, Moveable {
  @override
  void draw() {
    print(' /\\_/\\');
    print('( o.o )');
    print(' > ^ <');
  }


  @override
  void move(int seconds) {
    for (int i = 0; i < seconds; i++) {
      print('살금살금');
    }
  }
}

void main() {
  final House house = House();
  house.draw();

  final Cat cat = Cat();
  cat.draw();

  // House newHouse = cat as House;


  Drawable animal = Cat();
  animal.draw();

  List<Moveable> moveables = [
    cat
  ];

  List<Drawable> drawables = [
    cat, house,
  ];

  Iterable<Drawable> iterables = [
    cat, house,
  ];

}

void someFunction(Drawable cat) {
  cat.draw();
}