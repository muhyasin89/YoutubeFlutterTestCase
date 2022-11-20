import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/blocs/authentication/authentication.dart';
import '../models/models.dart';

class HomePage extends StatelessWidget {
  final User user;

  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Welcome, ${user.name}',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height),
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.all(0),
                  foregroundColor: Theme.of(context).primaryColor,
                ),
                child: Text('Logout'),
                onPressed: () {
                  authBloc.add(UserLoggedOut());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
