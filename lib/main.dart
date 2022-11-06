import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/bloc/auth_repository.dart';
import 'package:youtube_flutter_test_case/screen/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) => AuthRepository(),
        child: LoginView(),
      ),
    );
  }
}
