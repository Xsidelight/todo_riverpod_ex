import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/data/repositories/todo_repository.dart';

final todoListFuture =
    FutureProvider((ref) async => await TodoRepositoy().getTodos());

