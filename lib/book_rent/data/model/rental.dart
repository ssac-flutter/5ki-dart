import 'package:json_annotation/json_annotation.dart';

import 'book.dart';
import 'user.dart';

part 'rental.g.dart';

@JsonSerializable(explicitToJson: true)
class Rental {
  int id = -1;
  Book book;
  User user;
  DateTime startDate;
  DateTime endDate;
  bool isReturned;
  bool isExtended;

  Rental({
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
