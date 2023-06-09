import 'package:dart_basic/network/mask/dto/mask_info_dto.dart';
import 'package:dart_basic/network/mask/mask_api.dart';
import 'package:dart_basic/network/mask/model/mask_info_result.dart';
import 'mapper/mask_mapper.dart';

// Api

// DTO

// Mapper

// Model

// 로직 (main)
void main() async {
  final api = MaskApi();

  final MaskInfoDto dto = await api.getMaskInfoResult();
  final MaskInfoResult model = dto.toMaskInfoResult();

  print(model.stores);
}