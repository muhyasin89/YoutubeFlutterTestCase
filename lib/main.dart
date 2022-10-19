import 'package:flutter/material.dart';
import 'package:youtube_test_case/CounterBloc.dart';
import './screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: BlocProvider(
          create: (BuildContext context) => CounterBloc(0),
          child: MyHomeScreen(),
        ),
      ),
    );
  }
}
