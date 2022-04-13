import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/data/repositories/todo_repository.dart';
import 'package:todos_riverpod/logic/state/todo_state.dart';

import '../../data/models/todo.dart';

class TodoNotifier extends StateNotifier<TodoState> {
  TodoNotifier(this._todoRepository) : super(const TodoState()) {
    getTodoList();
  }

  final TodoRepository _todoRepository;

  Future<void> getTodoList() async {
    try {
      state = const TodoState.loading();
      final todoList = await _todoRepository.getTodos();

      state = TodoState.loaded(todoList!);
      print(state);
    } catch (e) {
      state = TodoState.error('Error occurred: ${e.toString()}');
    }
  }
}
