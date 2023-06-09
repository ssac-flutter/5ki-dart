import 'package:json_annotation/json_annotation.dart';

part 'mask.g.dart';

@JsonSerializable(explicitToJson: true)
class Mask {
  String address;
  num lat;
  num lng;
  String name;
  String remainStatus;

  Mask({
    required this.address,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStatus,
  });

  factory Mask.fromJson(Map<String, dynamic> json) => _$MaskFromJson(json);

  Map<String, dynamic> toJson() => _$MaskToJson(this);

  @override
  String toString() {
    return 'Mask{address: $address, lat: $lat, lng: $lng, name: $name, remainStatus: $remainStatus}';
  }
}
