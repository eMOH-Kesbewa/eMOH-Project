/**
 * View Clinics
 */
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/msgService.dart';
import 'package:mobileapp/services/viewClinicService.dart';
import 'package:mobileapp/widgets/notificationViewCard.dart';
import 'package:mobileapp/services/globals.dart' as globals;
import 'package:shared_preferences/shared_preferences.dart';

var logger = Logger();

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Clinic> clinics = <Clinic>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clinic Schedule'),
      ),
      body: Container(
        child: FutureBuilder(
            future: fetchClinic(), //this is implemented on
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              //loop variable is used to get the msg list length
              logger.i('future builder');
              // logger.w(snapshot.data);

              int loop = snapshot.data.length;

              for (var i = 0; i < loop; i++) {
                Clinic clinic = Clinic(
                    date: snapshot.data[i]['date'],
                    discription: snapshot.data[i]['clinic_discription'],
                    title: snapshot.data[i]['clinic_title'],
                    priority: snapshot.data[i]['clinic_priority']);
                // logger.d(clinic.date);
                globals.msgList.add(ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationView(clinic: clinic),
                      ),
                    );
                  },
                  leading: Icon(Icons.message),
                  title: Text(snapshot.data[i]['clinic_title']),
                  trailing: Text(snapshot.data[i]['date']),
                ));
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return SingleChildScrollView(
                  child: Column(
                    children: globals.msgList,
                  ),
                );
              }
            }),
      ),
    );
  }

}
