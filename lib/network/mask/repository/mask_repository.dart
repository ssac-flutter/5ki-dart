import 'package:dart_basic/network/mask/model/mask.dart';

abstract interface class MaskRepository {
  Future<List<Mask>> getMasks();
}
