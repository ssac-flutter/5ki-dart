import 'package:dart_basic/network/mask/data_source/mask_api.dart';
import 'package:test/test.dart';

void main() {
  test('마스크 정보를 잘 가져와야 된다', () async {
    // 준비
    final api = MaskApi();

    // 실행
    final dto = await api.getMaskInfoResult();

    // 검증
    expect(dto.count, 222);
  });
}