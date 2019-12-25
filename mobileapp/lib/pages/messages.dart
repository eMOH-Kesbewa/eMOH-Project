import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/services/msgService.dart';
<<<<<<< HEAD
import 'package:http/http.dart' as http;
import 'package:mobileapp/services/viewClinicService.dart';
import 'package:mobileapp/widgets/notificationViewCard.dart';
import 'package:mobileapp/services/globals.dart' as globals;

var logger = Logger();

=======
var logger = Logger();
>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f
class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
<<<<<<< HEAD
 
  List<Clinic> clinics = <Clinic>[];
=======
  List<ListTile> msgList = <ListTile>[];
>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f

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

<<<<<<< HEAD
=======
              
>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f
              int loop = snapshot.data.length;
              for (var i = 0; i < loop; i++) {
                // String clinic_id = snapshot.data.clinicId[i];
                // String clinic_name = snapshot.data.clinicName[i];
                // String clinic_discription = snapshot.data.clinicDiscription[i];
                // String date = snapshot.data.date[i];
<<<<<<< HEAD
                Clinic clinic = Clinic(date: snapshot.data[i]['date'],discription: snapshot.data[i]['clinic_discription'],title: snapshot.data[i]['clinic_title'],priority: snapshot.data[i]['clinic_priority']);
              // logger.d(clinic.date);
                globals.msgList.add(ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NotificationView(clinic: clinic),
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
=======

                msgList.add(ListTile(
>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f
                  leading: Icon(Icons.message),
                  title: Text(snapshot.data[i]['clinic_title']),
                  trailing: Text(snapshot.data[i]['date']),
                ));
              }

<<<<<<< HEAD
=======

>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return SingleChildScrollView(
                  child: Column(
<<<<<<< HEAD
                    children: globals.msgList,
=======
                    children: msgList,
>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f
                  ),
                );
              }
            }),
      ),
    );
  }
}
<<<<<<< HEAD
//  readMsg(String id)async{
//      final response = await http.get('https://protected-bayou-52277.herokuapp.com/clinics/viewbyid/${id}');
//        if (response.statusCode == 200) {
//     return Family.fromJson(json.decode(response.body)[0]);
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load Family');
//   }
//  }
=======
>>>>>>> be8a0d38a0fd7d5899e387736f7eb5ffb4a2624f
