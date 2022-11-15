import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/modelView/bloc/home_bloc.dart';
import 'package:youtube_flutter_test_case/services/authentication.dart';
import 'package:youtube_flutter_test_case/services/todo.dart';
import 'package:youtube_flutter_test_case/view/todos.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final usernameField = TextEditingController();
  final passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login to Todo App')),
      body: BlocProvider(
        create: (context) => HomeBloc(
          RepositoryProvider.of<AuthenticationService>(context),
          RepositoryProvider.of<TodoService>(context),
        )..add(RegisterServiceEvent()),
        child: SingleChildScrollView(
          child: BlocConsumer<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state is SuccessfulLoginState) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TodosPage(username: state.username),
                  ),
                );
              }

              if (state is HomeInitial) {
                if (state.error != null)
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Error"),
                      content: Text(state.error!),
                    ),
                  );
              }
            },
            builder: (context, state) {
              if (state is HomeInitial) {
                return Column(
                  children: [
                    TextField(
                      controller: usernameField,
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordField,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    ElevatedButton(
                        onPressed: () => BlocProvider.of<HomeBloc>(context).add(
                            LoginEvent(usernameField.text, passwordField.text)),
                        child: Text('LOGIN'))
                  ],
                );
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }
}
