import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/add_task_screen.dart';
import 'package:todo_app_with_firebase/screens/login_screen.dart';
import 'package:todo_app_with_firebase/screens/profile_screen.dart';
import 'package:todo_app_with_firebase/screens/update_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task List Screen"),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const ProfileScreen();
                }));
              },
              icon: Icon(Icons.person)
          ),
          IconButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
              icon: Icon(Icons.logout)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const AddTaskScreen();
          }));
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            index += 1;
            return Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 10),

              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Task " + index.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text("Task description...",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.done),
                        iconSize: 18,
                        color: Colors.green[700],
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const UpdateTaskScreen();
                          }));
                        },
                        icon: Icon(Icons.edit),
                        iconSize: 18,
                        color: Colors.orange[800],
                      ),
                      IconButton(
                        onPressed: (){
                          showDialog(context: context, builder: (ctx) {
                            return AlertDialog(
                              title: Text("Confirmation!!!"),
                              content: Text("Are you sure to delete this task?"),
                              actions: [
                                TextButton(
                                  onPressed: (){
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text("No"),
                                ),
                                TextButton(
                                  onPressed: (){
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text("Yes, delete it"),
                                )
                              ],
                            );
                          });
                        },
                        icon: Icon(Icons.delete),
                        iconSize: 18,
                        color: Colors.red[800],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
