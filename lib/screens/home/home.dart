import 'package:flutter/material.dart';
import 'package:yikes/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text("Brew Crew"),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: [
          TextButton.icon(onPressed: ()async{await _authService.signOut();}, icon: Icon(Icons.person), label: Text("Sign Out"))
        ],
      ),
    );
  }
}