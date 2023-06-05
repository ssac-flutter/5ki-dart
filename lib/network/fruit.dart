class FruitDto {
  num? id;
  String? name;
  num? price;

  FruitDto({
    this.id,
    this.name,
    this.price,
  });

  FruitDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}

class Fruit {
  String name;
  int price;
  double sale;
  String city;

  Fruit(this.name, this.price, this.sale, this.city);
}

void main() {
  final f = Fruit('name', 0, 0.0, 'city');

  
}

extension on Fruit {
  bool get isBlank => name.isEmpty;

}
