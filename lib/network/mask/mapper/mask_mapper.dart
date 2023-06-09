// 기능 확장 : extends

import 'package:dart_basic/network/mask/dto/mask_dto.dart';
import 'package:dart_basic/network/mask/model/mask.dart';

// 확장 함수
// MaskInfoDto 에다가 기능 추가
extension ToMask on Stores {
  Mask toMask() {
    return Mask(
      address: addr ?? '',
      lat: lat ?? 0.0,
      lng: lng ?? 0.0,
      name: name ?? '이름 없음',
      remainStatus: remainStat ?? '알 수 없음',
    );
  }
}
