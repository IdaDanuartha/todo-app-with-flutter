import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/task_list_screen.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Task name'
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  return const TaskListScreen();
                }));
              },
              child: const Text('Add new task'),
            ),
          ],
        ),
      ),
    );
  }
}

