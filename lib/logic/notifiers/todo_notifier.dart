import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/data/repositories/todo_repository.dart';
import 'package:todos_riverpod/logic/state/todo_state.dart';

class TodoNotifier extends StateNotifier<TodoState> {
  TodoNotifier(this._todoRepositoy) : super(const TodoState()) {
    getTodoList();
  }

  final TodoRepository _todoRepositoy;

  Future<void> getTodoList() async {
    try {
      state = const TodoState.loading();
      final todoList = await _todoRepositoy.getTodos();
      state = TodoState.loaded(todoList);
    } catch (e) {
      state = TodoState.error('Error occured: ${e.toString()}');
    }
  }
}
