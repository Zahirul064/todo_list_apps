import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_apps/screens/add_new_todo_screen.dart';
import 'package:todo_list_apps/screens/update_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Title of Todo'),
            subtitle: Text('description'),
            leading: Text('Status'),
            trailing: Wrap(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                IconButton(
                    onPressed: _showChangeStatusDialog,
                    icon: const Icon(Icons.edit)),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpdateTodoScreen(),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTodoScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showChangeStatusDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Change Status'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('Idle'),
                ),
                Divider(height: 0,),
                ListTile(
                  title: Text('In Progress'),
                ),
                Divider(height: 0,),
                ListTile(
                  title: Text('Done'),
                ),
              ],
            ),
          );
        });
  }
}
