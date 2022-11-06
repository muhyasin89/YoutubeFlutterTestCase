import 'package:youtube_flutter_test_case/bloc/form_submission_status.dart';

class LoginState {
  final String username;
  final String password;

  LoginState({this.username = '', this.password = ''});

  LoginState copyWith({
    String? username,
    String? password,
  }) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password);
  }
}
