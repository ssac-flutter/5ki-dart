import '../model/user.dart';

abstract interface class UserRepository {
  User? findById(int id);

  List<User> findAll();

  User upsertUser(User user);

  void deleteUser(int id);
}
