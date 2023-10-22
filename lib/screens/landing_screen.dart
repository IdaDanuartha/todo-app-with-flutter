import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/login_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/todo-img.png", width: 300, height: 300,),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: Text("Enter to Todo App")
            )
          ],
        ),
      ),
    );
  }
}
