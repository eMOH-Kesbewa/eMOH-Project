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
    //final Clinic args = ModalRoute.of(context).settings.arguments;
   logger.e(clinic.priority);
   logger.e(clinic.date);
   logger.e(clinic.discription);
    return Scaffold(
      appBar: AppBar(
        title: Text('Read Notification'),
        backgroundColor: Color(0xfffd96a9),
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: Icon(Icons.calendar_today),
                  ),
                  label: Text(clinic.date),
                ),
              ),
              Text(clinic.title),
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
