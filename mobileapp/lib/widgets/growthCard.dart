import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/style.dart';
import '../services/globals.dart' as globals;

class growthCard extends StatefulWidget {
  String title, occAge, conAge,officer;
  bool vis;
  growthCard(
    this.title,
    this.occAge,
    this.conAge,
    this.officer,
    this.vis,
  );
  @override
  _growthCardState createState() => _growthCardState();
}
var logger = Logger();
String dropdownValue = 'Select';
String layingFaceDownOccVal;
class _growthCardState extends State<growthCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: growBulletIcon,
              title: Text(
                'Occured Age (Months)',
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: Text(widget
                  .occAge), //Text(snapshot.data.layingFaceDownOcc.toString()),
            ),
            SizedBox(
              height: 10.0,
            ),
            Visibility(
              child: Center(
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  /*underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),*/
                  onChanged: (String newvalue) {
                    setState(() {
                      dropdownValue = newvalue;
                      widget.occAge = newvalue;
                      globals.layingFaceDownOcc = dropdownValue;
                      logger.wtf(globals.layingFaceDownOcc);
                      // widget.layingFaceDownOcc = dropdownAgeue;
                    });
                  },
                  /*{
        if (switchAge == true) {
          setState(() {
            dropdownAgeue = newAgeue;
            layingFaceDownOcc = dropdownAgeue;
          });
        } else {
          return null;
        }
      },*/
                  items: <String>['Select', '1.5', '2', '2.5', '3']
                      .map<DropdownMenuItem<String>>((String Ageue) {
                    return DropdownMenuItem<String>(
                      value: Ageue,
                      child: Text(Ageue),
                    );
                  }).toList(),
                ),
              ),
              visible: widget.vis,
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: growBulletIcon,
              title: Text(
                'Confrimed Age (Months)',
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: Text(widget.conAge),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: growBulletIcon,
              title: Text(
                'Designation of the officer who confrimed',
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: Text(widget.officer),
            ),
          ],
        ),
      ),
    );
  }
}
