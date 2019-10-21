import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/teethService.dart';
//import 'package:mobileapp/pages/babyInfo/teethCard.dart';
import 'package:mobileapp/widgets/teethCard.dart';

class Teeth extends StatefulWidget {
  @override
  _TeethState createState() => _TeethState();
}

var logger = Logger();
bool formVis, listVis;

class _TeethState extends State<Teeth> {
  Future<Baby> baby;
  @override
  void initState() {
    baby = fetchBaby();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teeth Check'),
      ),
      body: FutureBuilder<Baby>(
        future: baby,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          // logger.w('hello');
          // logger.wtf(snapshot.data.noOfTeeth6mo);
          // logger.v(snapshot.data.status6mo);
          logger.i(snapshot.data.status6mo);
          if (snapshot.data.status6mo == "httpdata") {
            formVis = true;
            listVis = false;
          } else {
            listVis = true;
            formVis = false;
          }

          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // Container(width: 100.0, child: TextField()),
                Chip(
                  avatar: CircleAvatar(
                    backgroundImage: AssetImage("images/mother.png"),
                    backgroundColor: Colors.grey.shade800,
                    //child: Text('From the First Month of Birth'),
                  ),
                  label: Text('Six Months of Birth'),
                ),
                TeethCard(
                    snapshot.data.date6mo,
                    snapshot.data.noOfTeeth6mo,
                    snapshot.data.status6mo,
                    formVis,
                    listVis,
                    "six_date",
                    "six_Number_of_teeth",
                    "six_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Seven Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date7mo,
                //     snapshot.data.noOfTeeth7mo,
                //     snapshot.data.status7mo,
                //     formVis,
                //     listVis,
                //     "seven_date",
                //     "seven_Number_of_teeth",
                //     "seven_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Eight Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date8mo,
                //     snapshot.data.noOfTeeth8mo,
                //     snapshot.data.status8mo,
                //     formVis,
                //     listVis,
                //     "eight_date",
                //     "eight_Number_of_teeth",
                //     "eight_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Nine Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date9mo,
                //     snapshot.data.noOfTeeth9mo,
                //     snapshot.data.status9mo,
                //     formVis,
                //     listVis,
                //     "nine_date",
                //     "nine_Number_of_teeth",
                //     "nine_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Ten Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date10mo,
                //     snapshot.data.noOfTeeth10mo,
                //     snapshot.data.status10mo,
                //     formVis,
                //     listVis,
                //     "ten_date",
                //     "ten_Number_of_teeth",
                //     "ten_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Eleven Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date11mo,
                //     snapshot.data.noOfTeeth11mo,
                //     snapshot.data.status11mo,
                //     formVis,
                //     listVis,
                //     "eleven_date",
                //     "eleven_Number_of_teeth",
                //     "eleven_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Twelve Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date12mo,
                //     snapshot.data.noOfTeeth12mo,
                //     snapshot.data.status12mo,
                //     formVis,
                //     listVis,
                //     "twelve_date",
                //     "twelve_Number_of_teeth",
                //     "twelve_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Thirteen Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date13mo,
                //     snapshot.data.noOfTeeth13mo,
                //     snapshot.data.status13mo,
                //     formVis,
                //     listVis,
                //     "thirteen_date",
                //     "thirteen_Number_of_teeth",
                //     "thirteen_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Fourteen Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date14mo,
                //     snapshot.data.noOfTeeth14mo,
                //     snapshot.data.status14mo,
                //     formVis,
                //     listVis,
                //     "fouteen_date",
                //     "fouteen_Number_of_teeth",
                //     "fouteen_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Fifteen Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date15mo,
                //     snapshot.data.noOfTeeth15mo,
                //     snapshot.data.status15mo,
                //     formVis,
                //     listVis,
                //     "fifteen_date",
                //     "fifteen_Number_of_teeth",
                //     "fifteen_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Sixteen Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date16mo,
                //     snapshot.data.noOfTeeth16mo,
                //     snapshot.data.status16mo,
                //     formVis,
                //     listVis,
                //     "sixteen_date",
                //     "sixteen_Number_of_teeth",
                //     "sixteen_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Seventeen Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date17mo,
                //     snapshot.data.noOfTeeth17mo,
                //     snapshot.data.status17mo,
                //     formVis,
                //     listVis,
                //     "seventeen_date",
                //     "seventeen_Number_of_teeth",
                //     "seventeen_status"),
                // Chip(
                //   avatar: CircleAvatar(
                //     backgroundImage: AssetImage("images/mother.png"),
                //     backgroundColor: Colors.grey.shade800,
                //     //child: Text('From the First Month of Birth'),
                //   ),
                //   label: Text('Eighteen Months of Birth'),
                // ),
                // TeethCard(
                //     snapshot.data.date18mo,
                //     snapshot.data.noOfTeeth18mo,
                //     snapshot.data.status18mo,
                //     formVis,
                //     listVis,
                //     "eighteen_date",
                //     "eighteen_Number_of_teeth",
                //     "eighteen_status"),
              ],
            ),
          );
        },
      ),
    );
  }
}
