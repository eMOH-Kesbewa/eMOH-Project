import 'dart:convert';

import '../pages/login.dart';
import 'package:http/http.dart' as http;
import '../classes/loginDetails.dart';

class ApiService {
  static Future<List<dynamic>> getUserList() async {
    try {
      final response = await http.get('https://protected-bayou-52277.herokuapp.com/login');
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }
}