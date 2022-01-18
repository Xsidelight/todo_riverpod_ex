import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/logic/providers/todo_provider.dart';

import 'package:todos_riverpod/ui/screens/todo_details_screen.dart';
import 'package:todos_riverpod/ui/widgets/edit_todo_widget.dart';



class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoListFuture);
    return Scaffold(
      appBar: AppBar(),
      body: todoList.when(
          data: (todos) => ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  onLongPress: () => showModalBottomSheet(
                    context: context,
                    builder: (_) => EditTodoWidget(
                      todo: todos[index],
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(
                    context,
                    TodoDetailsScreen.routeName,
                    arguments: todos[index],
                  ),
                  title: Text(todos[index].todo!),
                  subtitle: Text(todos[index].description!),
                  trailing: CircleAvatar(
                    child: const Icon(
                      Icons.done,
                    ),
                    backgroundColor:
                        todos[index].isDone! ? Colors.green : Colors.grey,
                  ),
                ),
                itemCount: todos.length,
              ),
          error: (err, stack) => Text('Error occured: $err'),
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive())),
    );
  }
}
