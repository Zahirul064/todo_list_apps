import 'package:flutter/material.dart';
import 'package:todo_list_apps/screens/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoListScreen(),
    );
  }
}
