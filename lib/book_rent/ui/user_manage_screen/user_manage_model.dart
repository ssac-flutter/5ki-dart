import 'package:dart_basic/book_rent/data/repository/user_repository.dart';

import '../../data/model/user.dart';

class UserManageModel {
  final UserRepository _userRepository;

  UserManageModel(this._userRepository);

  void addUser(String name) {
    _userRepository.upsertUser(User(name: name));
  }

  void deleteUser(int id) {
    _userRepository.deleteUser(id);
  }

  List<User> getAllUsers() => _userRepository.findAll();
}
