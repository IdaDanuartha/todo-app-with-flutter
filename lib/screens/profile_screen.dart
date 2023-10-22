import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/task_list_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/images/avatar-img.png'),
            SizedBox(height: 20,),
            Text("Ida Putu Sucita Danuartha", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
            SizedBox(height: 10,),
            Text("danuart21@gmail.com", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
            SizedBox(height: 10,),
            Text("Total 10 tasks created", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.green[600])),
          ]
        ),
      ),
    );
  }
}

