import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/add_task_screen.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task List Screen"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.person)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.logout)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
            return const AddTaskScreen();
          }));
        },
        child: Icon(Icons.add),
      ),
      body: const Placeholder(),
    );
  }
}
