import 'package:flutter/material.dart';
import 'package:youtube_flutter_test_case/presentation/router.dart';
import 'package:youtube_flutter_test_case/presentation/screens/todos_screen.dart';

void main() {
  runApp(Todo(
    router: AppRouter(),
  ));
}

class Todo extends StatelessWidget {
  final AppRouter router;

  const Todo({super.key, required this.router});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}
