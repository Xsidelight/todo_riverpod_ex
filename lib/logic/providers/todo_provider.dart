import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/data/repositories/todo_repository.dart';
import 'package:todos_riverpod/logic/notifiers/todo_notifier.dart';
import 'package:todos_riverpod/logic/state/todo_state.dart';

final todoRepositoryProvider =
    Provider<TodoRepository>((ref) => TodoRepository());

final todoNotifierProvider = StateNotifierProvider<TodoNotifier, TodoState>(
    (ref) => TodoNotifier(ref.watch(todoRepositoryProvider)));
