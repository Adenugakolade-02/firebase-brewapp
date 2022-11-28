import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yikes/models/user.dart';
import 'package:yikes/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yikes/services/auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserBase?>(
      create: (_)=>AuthService().userStream, 
      initialData: null,
      child: MaterialApp(
        home: Wrapper()
      ),
    );
  }
}
