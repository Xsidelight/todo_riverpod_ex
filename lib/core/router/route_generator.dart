import 'package:flutter/material.dart';
import 'package:todos_riverpod/data/models/todo.dart';
import 'package:todos_riverpod/ui/screens/home_screen.dart';
import 'package:todos_riverpod/ui/screens/todo_details_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/todo-details':
        final todo = args as Todo;
        return MaterialPageRoute(
          builder: (_) => TodoDetailsScreen(
            todo: todo,
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
