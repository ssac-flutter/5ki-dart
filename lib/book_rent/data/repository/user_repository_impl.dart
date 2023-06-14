import '../model/user.dart';
import 'user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final List<User> _users = [];
  var _lastId = 0;

  @override
  User? findById(int id) {
    return _users.firstWhere((element) => element.id == id);
  }

  @override
  List<User> findAll() {
    return _users;
  }

  @override
  User upsertUser(User user) {
    final index = _users.indexWhere((element) => element.id == user.id);

    if (index == -1) {
      user.id = ++_lastId;
      _users.add(user);
    } else {
      _users[index] = user;
    }

    return user;
  }

  @override
  void deleteUser(int id) {
    _users.removeWhere((element) => element.id == id);
  }
}
