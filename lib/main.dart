import 'package:flutter/material.dart';
import 'package:youtube_flutter_test_case/repository/authentication_repository.dart';
import 'package:youtube_flutter_test_case/app.dart';
import 'repository/user_repository.dart';

void main() {
  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
