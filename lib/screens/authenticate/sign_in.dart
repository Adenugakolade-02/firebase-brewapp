import 'package:flutter/material.dart';
import 'package:yikes/models/user.dart';
import 'package:yikes/services/auth.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: const Text("Sign in to Brew Crew"),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal:50),
        child: ElevatedButton(
          child: const Text("Sign in Anon"),
          onPressed: ()async{
            UserBase? result = await _authService.signInAnon();
            result==null? print("error signing in"): print(result.uid);
          },
        ),
      ),
    );
  }
}