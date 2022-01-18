import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todos_riverpod/data/models/todo.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState() = Initial;
  const factory TodoState.loading() = Loading;
  const factory TodoState.loaded(List<Todo> list) = LoadedTodoList;
  const factory TodoState.error(String message) = Error;
}
