class Book extends TangibleAsset {
  final String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  });
}

class Computer extends TangibleAsset {
  final String makerName;

  Computer({
    required this.makerName,
    required super.name,
    required super.price,
    required super.color,
  });
}

abstract class TangibleAsset extends Asset implements Thing {
  final String color;
  double _weight = 0;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
  });

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}

abstract class Asset {
  final String name;
  final int price;

  Asset({
    required this.name,
    required this.price,
  });
}

abstract interface class Thing {
  double get weight;
  set weight(double value);

  // double getWeight();
  // void setWeight(double weight);
}