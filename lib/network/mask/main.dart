import 'package:dart_basic/network/mask/data_source/mask_api.dart';
import 'package:dart_basic/network/mask/dto/mask_dto.dart';
import 'package:dart_basic/network/mask/model/mask.dart';
import 'package:dart_basic/network/mask/repository/mask_repository.dart';
import 'package:dart_basic/network/mask/repository/mask_repository_impl.dart';
import 'mapper/mask_mapper.dart';

// Api

// DTO

// Mapper

// Model

// 로직 (main)
void main() async {
  // Api 통신
  // final api = MaskApi();
  //
  // // Json 을 Dto 로
  // final MaskDto dto = await api.getMaskInfoResult();
  //
  // // Dto에서 필요한 내용을 mapper를 통해 모델 클래스로 변환
  // final List<Mask> masks = dto.stores?.map((e) => e.toMask()).toList() ?? [];

  final MaskRepository maskRepository = MaskRepositoryImpl();

  // 활용
  print(maskRepository.getMasks().toString());
}