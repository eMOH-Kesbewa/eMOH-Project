import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/services/msgService.dart';
var logger = Logger();
class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<ListTile> msgList = <ListTile>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mother Details'),
        backgroundColor: Color(0xfffd96a9),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: fetchClinic(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              //loop variable is used to get the msg list length
              logger.i('future builder');
              logger.w(snapshot.data);

              
              int loop = snapshot.data.length;
              for (var i = 0; i < loop; i++) {
                // String clinic_id = snapshot.data.clinicId[i];
                // String clinic_name = snapshot.data.clinicName[i];
                // String clinic_discription = snapshot.data.clinicDiscription[i];
                // String date = snapshot.data.date[i];

                msgList.add(ListTile(
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
                    children: msgList,
                  ),
                );
              }
            }),
      ),
    );
  }
}
