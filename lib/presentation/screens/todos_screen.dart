import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/constants/variable.dart';
import 'package:youtube_flutter_test_case/cubit/todos_cubit.dart';
import 'package:youtube_flutter_test_case/presentation/router.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodosCubit>(context).fetchTodos();

    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        actions: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, ADD_TODO_ROUTE),
            child: Padding(
                padding: const EdgeInsets.all(10.0), child: Icon(Icons.add)),
          ),
        ],
      ),
      body: BlocBuilder<TodosCubit, TodosState>(
        builder: (context, state) {
          if (!(state is TodoLoaded)) return CircularProgressIndicator();

          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text("To do Screen"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
