import 'package:flutter/material.dart';
import 'package:youtube_flutter_test_case/main.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  late final NamesCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = NamesCubit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App'),
      ),
      body: StreamBuilder<String?>(
        stream: cubit.stream,
        builder: (context, snapshot) {
          final button = TextButton(
            onPressed: () => cubit.pickRandomName(),
            child: const Text('Pick Random Name'),
          );

          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Column(
                children: [Text(snapshot.data ?? ''), button],
              );
            case ConnectionState.done:
              return const SizedBox();
            case ConnectionState.waiting:
              return button;
            case ConnectionState.active:
              return button;
          }
        },
      ),
    );
  }
}
