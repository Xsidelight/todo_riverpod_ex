import 'package:flutter/material.dart';
import 'package:todos_riverpod/data/models/todo.dart';

class TodoDetailsScreen extends StatelessWidget {
  static const routeName = '/todo-details';

  const TodoDetailsScreen({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(todo.todo!),
      ),
    );
  }
}
