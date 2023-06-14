import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable(explicitToJson: true)
class Book {
  int id;
  String title;
  String author;
  String publisher;
  String isbn;
  String description;

  Book({
    required this.id,
    required this.title,
    this.author = '',
    this.publisher = '',
    this.isbn = '',
    this.description = '',
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'Book{id: $id, title: $title, author: $author, publisher: $publisher, isbn: $isbn, description: $description}';
  }
}
