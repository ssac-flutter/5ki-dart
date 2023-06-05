class Todo {
  int id;
  String title;
  bool isDone;

  Todo(this.id, this.title, this.isDone);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'Todo{id: $id, title: $title, isDone: $isDone}';
  }
}