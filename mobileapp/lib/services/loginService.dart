/*import 'dart:convert';
import 'package:http/http.dart';
import '../pages/login.dart';
import 'package:http/http.dart' as http;
import '../classes/loginDetails.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart' show debugPrint;
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

String baseUrl = 'https://protected-bayou-52277.herokuapp.com';

class ApiService {
  static Future<List<dynamic>> checkUsernamePassword(
      var username, var password) async {
    try {
      print('checkUsernamePassword');
      final response = await http.post(
          'https://protected-bayou-52277.herokuapp.com/users/login',
          body: {'username': username, 'password': password});
      print('\**\*');
      if (response.statusCode == 200) {
        print('loggedin');
        print(response.body);
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }
}*/
/*static Future<String> checkUsernamePassword(String username, String password) async {
    print('checkUsernamePassword - function');
    //final url = new Uri.https(baseUrl, '/users/login');
    String url = 'https://protected-bayou-52277.herokuapp.com/users/login';
     var response =
        await http.post(url, body: {'username': username, 'password': password});
        print(response);
    return response.toString();
  }
}*/

/*static Future checkUsernamePassword(String username,String password) async {
    var url = 'https://protected-bayou-52277.herokuapp.com/users/login';
    var response =
        await http.post(url, body: {'username': username, 'password': password});
        print(response);
    return response;
  }
}*/
/*Future<Response> loginUser(String email, String password) async {
    final url = new Uri.https(baseUrl, '/users/authenticate');
    final credentials = '$email:$password';
    final basic = 'Basic ${base64Encode(utf8.encode(credentials))}';
    final json = await NetworkUtils.post(url, headers: {
      HttpHeaders.AUTHORIZATION: basic,
    });
    return Response.fromJson(json);
  }*/
import 'dart:convert';

import '../pages/login.dart';
import 'package:http/http.dart' as http;
import '../classes/loginDetails.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static Future<List<dynamic>> getUserList(var username,var password) async {
    try {
      final response = await http.post('https://protected-bayou-52277.herokuapp.com/users/login',body: {'username': username, 'password': password});
      if (response.statusCode == 200) {
      print(response);  
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }


  static signIn(email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'email': email,
      'password': pass
    };
    var jsonResponse = null;
    var response = await http.post("https://protected-bayou-52277.herokuapp.com/users/login", body: data);
    return response;
    /*if(response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if(jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => MainPage()), (Route<dynamic> route) => false);
      }
    }
    else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }*/
  }
}