import 'package:flutter/material.dart';
import 'package:mobileapp/services/style.dart';

class growthCard extends StatefulWidget {
  @override
  _growthCardState createState() => _growthCardState();
}

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
                                  'While lying face downwards raise the head',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
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
                                    trailing: Text('data'),//Text(snapshot.data.layingFaceDownOcc.toString()),
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
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          layingFaceDownOcc = dropdownValue;
        });
      },
      /*{
        if (switchVal == true) {
          setState(() {
            dropdownValue = newValue;
            layingFaceDownOcc = dropdownValue;
          });
        } else {
          return null;
        }
      },*/
      items: <String>['Select', '1.5', '2', '2.5', '3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
                                  ),
                                  visible: layingFaceDownVis,
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
                                  trailing: Text(snapshot.data.layingFaceDownCon
                                      .toString()),
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
                                  trailing: Text(snapshot.data.layingFaceDownOf
                                      .toString()),
                                ),
                              ],
                            ),
                          ),
                        ),
  }
}