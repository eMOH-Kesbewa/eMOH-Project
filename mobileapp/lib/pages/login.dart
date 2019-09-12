import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      
      validator: (input) {
        if (input.isEmpty) {
          return 'Please Enter Index Number';
        }
        if (input.substring(0, 2) != '20') {
          return 'Index number not valid';
        }
      },
      obscureText: false,
      //style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      onSaved: (input) => email = input,
    );
    return Scaffold(
      
      );
  }
}