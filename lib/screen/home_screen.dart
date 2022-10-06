import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_test_case/screen/second_screen.dart';
import '../providers/counter_provider.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You have push the button this many times: ${context.watch<Counter>().count}"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text("Go To Shopping"),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            key: Key('decrement_floatingActionButton'),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => {},
            key: Key('reset_floatingActionButton'),
            tooltip: 'Reset',
            child: Icon(Icons.exposure_zero),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            key: Key('increment_floatingActionButton'),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
