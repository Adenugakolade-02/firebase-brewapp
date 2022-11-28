import 'package:flutter/material.dart';
import 'package:yikes/screens/shared/input_decoration.dart';
import 'package:yikes/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;

  const Register({super.key, required this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _authService = AuthService();
  String email = '';
  String password='';
  String errorMessage='';
  final _key = GlobalKey<FormState>();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: const Text("Register Brew Crew"),
        actions: [
          TextButton.icon(onPressed: ()=>widget.toggleView(), icon: const Icon(Icons.person,color: Colors.black,), label: const Text("Sign In", style: TextStyle(color: Colors.black),))
        ],
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        ),
        body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal:50),
        child: Form(
          key:_key,
          child: Column(
            children:[
              TextFormField(
                onChanged: (val){email=val;},
                validator: (text)=>text=='' ? "Enter a valid text": null,
                decoration: textInputDecoration.copyWith(labelText: "Email"),
              ),
              const SizedBox(height:20),
              TextFormField(
                onChanged: (val){password=val;},
                validator: (text)=> text!.length<=6 ? "Characters must be more than 6": null,
                decoration: textInputDecoration.copyWith(labelText: "PassWord"),
              ),
              const SizedBox(height:20),

              ElevatedButton(
                child: const Text("Register"),
                style: ElevatedButton.styleFrom(primary:Colors.pink),
                onPressed: () async{
                  if(_key.currentState!.validate()){
                    dynamic result = await _authService.registerWithEmailAndPassword(email, password);
                    if(result==null){
                      setState(() {
                        errorMessage="Error in creating account";
                      });
                    }
                    else{
                      
                    }
                  }
                },
                ),
              const SizedBox(height:10),
              Text(errorMessage,style: const TextStyle(color: Colors.red),)
            ]
          )

          ),
      ),
    );
  }
}