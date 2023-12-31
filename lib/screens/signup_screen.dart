import 'package:flutter/material.dart';
import 'package:todo_app_with_firebase/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                  hintText: 'Full Name'
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Confirm Password'
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                var fullname = fullNameController.text.trim();
                var email = emailController.text.trim();
                var password = passwordController.text.trim();
                var confirmPass = confirmPasswordController.text.trim();

                if(fullname.isEmpty || email.isEmpty || password.isEmpty || confirmPass.isEmpty) {
                  showDialog(context: context, builder: (ctx) {
                    return AlertDialog(
                      title: Text("Input is empty!"),
                      content: Text("Please fill fullname, email, password and confirm password input!"),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(ctx).pop();
                          },
                          child: Text("Ok"),
                        ),
                      ],
                    );
                  });
                } else if(password != confirmPass) {
                  showDialog(context: context, builder: (ctx) {
                    return AlertDialog(
                      title: Text("Password not match!"),
                      content: Text("Your password and confirmation password don't match"),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(ctx).pop();
                          },
                          child: Text("Ok"),
                        ),
                      ],
                    );
                  });
                } else {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                }
              },
              child: const Text('Create Account'),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Registered?"),
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    child: const Text('Login now!')
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
