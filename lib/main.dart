import 'package:flutter/material.dart';
import 'package:youtube_test_case/providers/counter_provider.dart';
import 'package:youtube_test_case/providers/shooping_cart_provider.dart';
import './screen/home_screen.dart';
import './screen/second_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => ShoppingCart())
      ],
      child: MyApp(),
    ),
  );
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
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomeScreen(),
        'second': (context) => SecondScreen(),
      },
    );
  }
}
