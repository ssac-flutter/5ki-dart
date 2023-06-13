import 'package:dart_basic/network/mask/data_source/mask_api.dart';
import 'package:dart_basic/network/mask/dto/mask_dto.dart';
import 'package:dart_basic/network/mask/mapper/mask_mapper.dart';
import 'package:dart_basic/network/mask/model/mask.dart';
import 'package:dart_basic/network/mask/repository/mask_repository.dart';

class MaskRepositoryImpl implements MaskRepository {
  final api = MaskApi();

  @override
  Future<List<Mask>> getMasks() async {
    // Json 을 Dto 로
    final MaskDto dto = await api.getMaskInfoResult();

    // Dto에서 필요한 내용을 mapper를 통해 모델 클래스로 변환
    final List<Mask> masks = dto.stores?.map((e) => e.toMask()).toList() ?? [];

    return masks;
  }

}

class MemoryMaskRepositoryImpl implements MaskRepository {
  List<Mask> masks = [
  ];

  @override
  Future<List<Mask>> getMasks() async {
    return masks;
  }

}