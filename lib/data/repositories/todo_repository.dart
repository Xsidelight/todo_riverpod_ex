import 'package:dio/dio.dart';
import 'package:todos_riverpod/core/constants.dart';
import 'package:todos_riverpod/data/models/todo.dart';

class TodoRepository {
  final Dio _dio = Dio();

  Future<List<Todo>> getTodos() async {
    List<Todo> _todoList = [];
    try {
      var response = await _dio.get('$baseUrl/todos');
      response.data.forEach((todo) {
        var todoModel = Todo.fromJson(todo);
        _todoList.add(todoModel);
      });
      return _todoList;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateTodo(Todo todo) async {
    final _body = todo.toJson();
    try {
      _dio.put('$baseUrl/update-todo', data: _body);
    } catch (e) {
      throw Exception(e);
    }
  }
}
