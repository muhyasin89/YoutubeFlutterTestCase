import 'package:hive/hive.dart';
import 'package:youtube_flutter_test_case/model/user.dart';

class AuthenticationService {
  late Box<User> _users;
  Future<void> init() async {
    Hive.registerAdapter(UserAdapter());
    _users = await Hive.openBox<User>('usersBox');
    await _users.clear();

    await _users.add(User('testuser1', 'password'));
    await _users.add(User('testabcd', 'password'));
  }

  Future<String?> authenticationUser(
      final String username, final String password) async {
    final success = _users.values.any((element) =>
        element.username == username && element.password == password);

    if (success) {
      return username;
    } else {
      return null;
    }
  }
}
