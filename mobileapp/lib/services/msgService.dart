import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'globals.dart' as globals;

var logger = Logger();

List<String> id = List();
List<String> name = List();
List<String> discription = List();
List<String> date = List();

Future fetchClinic() async {

  var x = await globals.getGlobals();
  final response = await http
      .get('https://protected-bayou-52277.herokuapp.com/clinics/view');

  if (response.statusCode == 200) {
    
    var result = json.decode(response.body);


    return result;
   
    //return [id,name,]
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Family');
  }
}


