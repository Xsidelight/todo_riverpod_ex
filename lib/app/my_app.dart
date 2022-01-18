import 'package:flutter/material.dart';
import 'package:todos_riverpod/core/router/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TODOS Riverpod',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
