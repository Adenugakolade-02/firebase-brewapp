import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yikes/models/user.dart';
import 'package:yikes/screens/authenticate/authenticate.dart';
import 'package:yikes/screens/home/home.dart';

class Wrapper extends StatefulWidget {
  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserBase?>(context);

    bool showSignIn = true;

    void toggleView(){
      setState(() {
        showSignIn=!showSignIn;
      });
    }
    
    return user==null? Authenticate() : Home();
  }
}