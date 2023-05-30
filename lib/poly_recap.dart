void main() {
  // list 리터럴 : <int>[]

  List<int> list = <int>[1, 2, 3];

  Iterable<int> iterable = <int>[1, 2, 3];

  // iterable = list;
  // list = iterable;

  print(list[0]);
  list[1] = 10;
  list.add(19);

  print(iterable.elementAt(0));
}
