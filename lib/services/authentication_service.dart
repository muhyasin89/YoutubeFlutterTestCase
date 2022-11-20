import '../exceptions/exceptions.dart';
import '../models/models.dart';

abstract class AuthenticationService {
  Future<User> getCurrentUser();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}

class FakeAuthenticationService extends AuthenticationService {
  @override
  Future<User> getCurrentUser() async {
    return User(
        name: "Muhyasin", email: "muhyasin89@gmail.com"); // return null for now
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // simulate a network delay

    if (email.toLowerCase() != 'test@domain.com' || password != 'testpass123') {
      throw AuthenticationException(message: 'Wrong username or password');
    }
    return User(name: 'Test User', email: email);
  }

  @override
  Future<void> signOut() {
    return Future.delayed(Duration(seconds: 5), () {
      print("it been signout");
    });
  }
}
