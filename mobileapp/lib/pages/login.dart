import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobileapp/pages/home.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
//import 'dart:io';
//import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;
  bool _isError = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  var email;
  var password;
  bool _passwordVisible = true;

//https://protected-bayou-52277.herokuapp.com/
  @override
  Widget build(BuildContext context) {
    final motherLogo = const ImageIcon(AssetImage("images/mother.png"),
        size: 200.0, color: Color(0xff5d1049));

    final emailField = TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      cursorColor: Colors.black12,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        // icon: Icon(Icons.email, color: Colors.black),
        hintText: "Email",
        border:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
        hintStyle: TextStyle(color: Colors.black26),
      ),
    );

    /* final pwField =  Container(
            margin: EdgeInsets.only(left: 16.0),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  prefixIcon: Icon(
                    Icons.account_box,
                    size: 28.0,
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        debugPrint('222');
                      })),
            ),
          );*/

    final pwField = TextFormField(
      controller: passwordController,
      cursorColor: Colors.black12,
      obscureText: _passwordVisible,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        //icon: Icon(Icons.lock, color: Colors.black),
        suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            }),

        hintText: "Password",
        border:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
        hintStyle: TextStyle(color: Colors.black26),
      ),
    );

    final loginButton = Container(
      width: 315.0,
      height: 48.0,
      child: new RaisedButton(
        color: Color(0xffFEEAE6),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        child: new Text(
          'Login',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff442C2E)),
        ),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });
          signIn(emailController.text, passwordController.text);
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
        child: _isError
            ? Center(child: loginError)
            : _isLoading
                ? Center(child: CircularProgressIndicator())
                : Column(
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
    );
  }

  signIn(String email, pass) async {
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    Map data = {'username': email, 'password': pass};
    var jsonResponse = null;
    var response = await http.post(
        "https://protected-bayou-52277.herokuapp.com/users/login",
        body: data);
    print("****status code****");
    print(response.statusCode);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      //print(jsonResponse);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        //String name = decoded['name'];
        // sharedPreferences.setString("token", jsonResponse['token']);
        bool state = jsonResponse['state'];
        print(state);
        if (state == true) {
          print('***validated***');
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) => Home()),
              (Route<dynamic> route) => false);
        } else {
          print('***else clause***');
          setState(() {
            print('#########');
            _isError = true;
          });
          return AlertDialog(
            title: Text('Error!'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Invalid user name or password'),
                ],
              ),
            ),
          );
          //alert dialog is not working
          /*setState(() {
            _isLoading = false;
          });*/

        }
      }
    } else {
      print('***');
      /* setState(() {
        _isLoading = false;
      });*/

      //print(response.body);
    }
  }

  final loginError = AlertDialog(
    title: Text('Error!'),
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text('Invalid user name or password'),
        ],
      ),
    ),
  );
}
