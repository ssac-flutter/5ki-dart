class Post {
  int id;
  String title;
  String body;

  Post(this.id, this.title, this.body);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}