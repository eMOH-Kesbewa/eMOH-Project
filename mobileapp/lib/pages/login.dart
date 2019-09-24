import 'package:flutter/material.dart';
import 'package:mobileapp/pages/home.dart';
import '../services/loginService.dart';
//import 'dart:io';
//import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  var email;
  var password;
//https://protected-bayou-52277.herokuapp.com/
  @override
  Widget build(BuildContext context) {
    final motherLogo = const ImageIcon(AssetImage("images/mother.png"),
        size: 200.0, color: Colors.black);

    final emailField = TextFormField(
      validator: (input) {
        if (input.isEmpty) {
          return 'Please Enter Index Number';
        }
      },
      obscureText: false,
      //style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        hintText: "email",
      ),
      onSaved: (input) => email = input,
    );

    final pwField = TextFormField(
      validator: (input) {
        if (input.isEmpty) {
          return 'Please Enter Password';
        }
      },
      obscureText: true,
      //style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        hintText: "password",
      ),
      onSaved: (input) => password = input,
    );

    final loginButton = Container(
      width: 315.0,
      height: 48.0,
      child: new RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        child: new Text('Login'),
        onPressed: ()  {
          checkDetails();
        },
      ),
    );
    final forgotPasswordText = FlatButton(
      child: Text('Forgot Password?'),
      padding: EdgeInsets.all(1.0),
      textColor: Colors.grey,
      //splashColor: Colors.blueAccent,
      onPressed: () {},
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
                child: motherLogo,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      emailField,
                      SizedBox(
                        height: 20.0,
                      ),
                      pwField,
                      SizedBox(
                        height: 20.0,
                      ),
                      loginButton,
                      SizedBox(
                        height: 20.0,
                      ),
                      forgotPasswordText,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future checkDetails() async {
    setState(() {
      _isLoading = true;
      print('setst 1');
    });
    final users = await ApiService.getUserList();
    print(users);
    setState(() {
      _isLoading = false;
      print('setst 2');
    });
    if (users == null) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text("Check your internet connection"),
              actions: <Widget>[
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            );
          });
      return;
    } else {
      final userWithUsernameExists =
          users.any((u) => u['username'] == _usernameController.text);
      if (userWithUsernameExists) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Incorrect username'),
                content: Text('Try with a different username'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            });
      }
    }
  }
}
