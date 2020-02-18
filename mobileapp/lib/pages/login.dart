import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/pages/familyProfile.dart';

import 'package:mobileapp/services/familyProflieServices.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import '../services/globals.dart' as globals;
//import 'dart:io';
//import 'package:flutter/services.dart';

var logger = Logger();

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

  @override
  Widget build(BuildContext context) {
    final motherLogo = const ImageIcon(AssetImage("images/mother.png"),
        size: 200.0, color: Color(0xff5d1049));

    final emailField = TextFormField(
      /*validator: (input) {
        if (input.isEmpty) {
          return 'Please Enter The Name';
        }
      },*/
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      cursorColor: Color(0xff5d1049),
      style: TextStyle(color: Color(0xff5d1049)),
      decoration: InputDecoration(
        // icon: Icon(Icons.email, color: Colors.black),
        hintText: "Email",
        border:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
        hintStyle: TextStyle(color: Colors.black26),
      ),
    );

    final pwField = TextFormField(
      controller: passwordController,
      cursorColor: Color(0xff5d1049),
      obscureText: _passwordVisible,
      style: TextStyle(color: Color(0xff5d1049)),
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
        onPressed: () async {
          //after the login REST api call && response code ==200
          // SharedPreferences prefs = await SharedPreferences.getInstance();
          // prefs.setString('email', emailController.text);
          signIn(emailController.text.toString(),
              passwordController.text.toString());
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (BuildContext ctx) => FamilyProfile()));
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
      backgroundColor: Color(0xfffffffa),
      //backgroundColor: Color(0xfffecee9),
      body: SingleChildScrollView(
        child: //_isError ? Center(child: loginError):
            _isLoading
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
    var response = await http.post("https://emohback.herokuapp.com/users/login",
        body: data);
    logger.wtf(response.statusCode);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      globals.globalEmail = emailController.text.toString();
      logger.wtf(jsonResponse['token']);
      logger.w(jsonResponse['userid']);
      SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString('jwt', jsonResponse['token']);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        //String name = decoded['name'];
        // sharedPreferences.setString("token", jsonResponse['token']);
        bool success = jsonResponse['success'];
        logger.wtf(jsonResponse['success']);
        print(success);
        if (success == true) {
          print('***validated***');
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('email', jsonResponse['userid']);

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext ctx) => BottomNavigation()));
          // Navigator.of(context).pushAndRemoveUntil(

          //     MaterialPageRoute(
          //         builder: (BuildContext context) => FamilyProfile()),
          //     (Route<dynamic> route) => false);
        } else {
          print('***else clause***');
          return Toast.show("Invalid email or password", context,
              duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
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
