import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/task_list_screen.dart';

class UpdateTaskScreen extends StatelessWidget {
  const UpdateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: TextEditingController()..text = 'Task 1',
              decoration: InputDecoration(
                  hintText: 'Task name',
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  return const TaskListScreen();
                }));
              },
              child: const Text('Save changes'),
            ),
          ],
        ),
      ),
    );
  }
}

