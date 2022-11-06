import 'package:flutter/material.dart';
import 'package:youtube_flutter_test_case/constants/variable.dart';
import 'package:youtube_flutter_test_case/presentation/router.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, ADD_TODO_ROUTE),
              child: Padding(
                  padding: const EdgeInsets.all(10.0), child: Icon(Icons.add)),
            ),
          ],
        ),
        body: Center(
          child: Text("To do Screen"),
        ));
  }
}