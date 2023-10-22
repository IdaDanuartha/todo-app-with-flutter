import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/signup_screen.dart';
import 'package:todo_app_with_firebase/screens/task_list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  return const TaskListScreen();
                }));
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not Registered Yet?"),
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                        return const SignupScreen();
                      }));
                    },
                    child: const Text('Register now!')
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
