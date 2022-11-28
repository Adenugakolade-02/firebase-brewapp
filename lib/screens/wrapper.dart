import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yikes/models/user.dart';
import 'package:yikes/screens/authenticate/authenticate.dart';
import 'package:yikes/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserBase?>(context);
    
    return user==null? Authenticate() : Home();
  }
}