import 'package:youtube_flutter_test_case/data/models/todo.dart';
import 'package:youtube_flutter_test_case/data/network_service.dart';

class Repository {
  final NetworkService networkService;

  Repository({required this.networkService});

  Future<List<Todo>> fetchTodos() async {
    final todoRaw = await networkService.fetchTodos();
    return todoRaw.map((e) => Todo.fromJson(e)).toList();
  }
}
