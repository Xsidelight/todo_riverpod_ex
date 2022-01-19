import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/logic/providers/todo_provider.dart';
import 'package:todos_riverpod/ui/screens/todo_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(builder: (context, ref, child) {
        final state = ref.watch(todoNotifierProvider);

        return state.when(
          () {
            return const Center(
              child: Text('Welcome to TodoList'),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (todos) => ListView.builder(
            itemBuilder: (context, index) => ListTile(
              onTap: () => Navigator.pushNamed(
                context,
                TodoDetailsScreen.routeName,
                arguments: todos[index],
              ),
              title: Text(todos[index].todo!),
              trailing: CircleAvatar(
                backgroundColor:
                    todos[index].isDone! ? Colors.green : Colors.grey,
                child: const Icon(
                  Icons.done,
                ),
              ),
            ),
            itemCount: todos.length,
          ),
          error: (error) => Center(
            child: Text(error),
          ),
        );
      }),
    );
  }
}
