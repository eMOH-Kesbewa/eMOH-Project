import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/services/msgService.dart';
import 'package:http/http.dart' as http;
import 'package:mobileapp/services/viewClinicService.dart';
import 'package:mobileapp/widgets/notificationViewCard.dart';
import 'package:mobileapp/services/globals.dart' as globals;

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

              int loop = snapshot.data.length;
              //only ten m=nitifications will be loaded.
              for (var i = 0; i < 10; i++) {
                // String clinic_id = snapshot.data.clinicId[i];
                // String clinic_name = snapshot.data.clinicName[i];
                // String clinic_discription = snapshot.data.clinicDiscription[i];
                // String date = snapshot.data.date[i];
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
                  // onTap: () => Navigator.pushNamed(context, '/foo', arguments: [
                  //   snapshot.data[i]['Clinic_title'],
                  //   snapshot.data[i]['date'],
                  //   snapshot.data[i]['clinic_priority'],
                  //   snapshot.data[i]['clinic_discription']
                  // ]),
                  // onTap: () => Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => NotificationView())),
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
//  readMsg(String id)async{
//      final response = await http.get('https://protected-bayou-52277.herokuapp.com/clinics/viewbyid/${id}');
//        if (response.statusCode == 200) {
//     return Family.fromJson(json.decode(response.body)[0]);
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load Family');
//   }
//  }
