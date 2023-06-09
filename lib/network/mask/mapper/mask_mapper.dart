// 기능 확장 : extends

import 'package:dart_basic/network/mask/dto/mask_info_dto.dart';
import 'package:dart_basic/network/mask/model/mask_info_result.dart';

// 확장 함수
// MaskInfoDto 에다가 기능 추가
extension ToMaskInfoResult on MaskInfoDto {

  MaskInfoResult toMaskInfoResult() {
    final result = MaskInfoResult(
      count: count ?? 0,
      stores: stores
              ?.where((store) =>
                  store.createdAt != null &&
                  store.remainStat != null &&
                  store.stockAt != null)
              .map((store) => Store(
                    addr: store.addr ?? '',
                    code: store.code ?? '',
                    createdAt: store.createdAt ?? '',
                    lat: store.lat?.toDouble() ?? 0.0,
                    lng: store.lng?.toDouble() ?? 0.0,
                    name: store.name ?? '',
                    remainStat: store.remainStat ?? '',
                    stockAt: store.stockAt ?? '',
                    type: store.type ?? '',
                  ))
              .toList() ??
          [],
    );
    return result;
  }
}
