import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/viewClinicService.dart';
//import 'package:mobileapp/lib/service/viewClinicService.dart';

var logger = Logger();

class NotificationView extends StatelessWidget {
  final Clinic clinic;
  NotificationView({Key key, @required this.clinic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  
    String dis = clinic.priority;
    int col = 0xff454e9e;
    switch (dis) {
      case "High":
        col = 0xffbf1a2f;
        break;
      case "Medium":
        col = 0xffe9724c;
        break;
      case "Low":
        col = 0xff39b54a;
        break;
      default:
        col = 0xff233d4d;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Read Notification'),
        backgroundColor: Color(0xfffd96a9),
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: Icon(
                        Icons.check_circle,
                        color: Color(col),
                      )),
                  label: Text(clinic.date.substring(0, 10)),
                ),
              ),
              Text(
                clinic.title,
                style: TextStyle(
                 fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(clinic.discription),
            ],
          ),
        ),
      ),
    );
  }
}
