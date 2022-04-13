import 'package:dio/dio.dart';
import 'package:todos_riverpod/core/constants.dart';
import 'package:todos_riverpod/core/networking/network_request.dart';
import 'package:todos_riverpod/core/networking/network_response.dart';
import 'package:todos_riverpod/core/networking/network_service.dart';
import 'package:todos_riverpod/core/networking/request_body.dart';
import 'package:todos_riverpod/data/models/todo.dart';

class TodoRepository {
  final NetworkService _networkService = NetworkService(baseUrl: baseUrl);

  Future<List<Todo>> getTodos() async {
    List<Todo> todoList = [];

    var response = await _networkService.execute<List<Todo>>(
      const NetworkRequest(
        type: NetworkRequestType.get,
        path: '/todos',
        data: NetworkRequestBody.empty(),
      ),
      (p0) {
        var loadedTodos = <Todo>[];
        p0.forEach((todo) {
          loadedTodos.add(Todo.fromJson(todo));
        });
        return loadedTodos;
      },
    );
    todoList.forEach((element) {
      print(element);
    });

    print('Response printed here --->>> $response');
    return todoList;
  }

  // Future<void> updateTodo(Todo todo) async {
  //   final _body = todo.toJson();
  //   try {
  //     dio.put('$baseUrl/update-todo', data: _body);
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
}
