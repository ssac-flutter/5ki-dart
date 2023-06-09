import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  int id;
  String title;
  String overview;

  @JsonKey(name: 'release_date')
  String releaseDate;

  Movie(this.id, this.title, this.overview, this.releaseDate);

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  String toString() {
    return 'Movie{id: $id, title: $title, overview: $overview, releaseDate: $releaseDate}';
  }
}