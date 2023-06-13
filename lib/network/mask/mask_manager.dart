import 'package:dart_basic/network/mask/repository/mask_repository.dart';
import 'package:dart_basic/network/mask/repository/mask_repository_impl.dart';

class MaskManager {
  final MaskRepository maskRepository = MaskRepositoryImpl();


  void printMenu() {
    print('1. 마스크 조회, 2. ... ');
  }

  void printMaskInfo() {

  }
}