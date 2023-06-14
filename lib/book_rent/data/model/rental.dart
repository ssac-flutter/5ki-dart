import 'package:json_annotation/json_annotation.dart';

import '../../../serialization.dart';
import 'book.dart';

part 'rental.g.dart';

@JsonSerializable(explicitToJson: true)
class Rental {
  int id;
  Book book;
  User user;
  DateTime startDate;
  DateTime endDate;
  bool isReturned;
  bool isExtended;

  Rental({
    required this.id,
    required this.book,
    required this.user,
    required this.startDate,
    required this.endDate,
    this.isReturned = false,
    this.isExtended = false,
  });

  factory Rental.fromJson(Map<String, dynamic> json) => _$RentalFromJson(json);

  Map<String, dynamic> toJson() => _$RentalToJson(this);
}
