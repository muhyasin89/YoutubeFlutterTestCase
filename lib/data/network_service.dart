import 'dart:convert';

import 'package:http/http.dart';
import 'package:youtube_flutter_test_case/data/models/todo.dart';

class NetworkService {
  final baseUrl = "http://localhost:3000/";

  Future<List> fetchTodos() async {
    try {
      final response = await get(Uri.parse(baseUrl + "/todos"));
      return jsonDecode(response.body) as List;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
