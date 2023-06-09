import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetail {
  String title;

  @JsonKey(name: 'poster_path')
  String posterUrl;

  MovieDetail(this.title, this.posterUrl);

  factory MovieDetail.fromJson(Map<String, dynamic> json) => _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

  @override
  String toString() {
    return 'MovieDetail{title: $title, posterUrl: $posterUrl}';
  }
}