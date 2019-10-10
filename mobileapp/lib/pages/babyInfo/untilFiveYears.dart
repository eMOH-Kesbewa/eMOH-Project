import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:toast/toast.dart';

class UntilFive extends StatefulWidget {
  @override
  _UntilFiveState createState() => _UntilFiveState();
}

class _UntilFiveState extends State<UntilFive> {
  Future<Baby> baby = fetchBaby();
  String _value = 'Select';
  String dropdownValue = 'Select';
  String layingFaceDownOcc;
  @override
  Widget build(BuildContext context) {
    final selectMonth = DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          layingFaceDownOcc = dropdownValue;
        });
      },
      items: <String>['Select', '1.5', '2', '2.5', '3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Growth of Child Until Five Years From Birth'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Baby>(
            future: baby,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator());
              else {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(
                              'From Six Weeks to Three Months',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        Card(
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
                                  leading: Icon(Icons.dashboard,
                                      color: Color(0xff468c98)),
                                  title: Text(
                                    'Occured Age (Months)',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  trailing:
                                      selectMonth, //Text(snapshot.data.layingFaceDownOcc.toString()),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                  leading: Icon(Icons.dashboard,
                                      color: Color(0xff468c98)),
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
                                  leading: Icon(
                                    Icons.dashboard,
                                    color: Color(0xff468c98),
                                  ),
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
                      ],
                    ),
                  ),
                );
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          updateDetails(layingFaceDownOcc).then((res) {
            Toast.show("Done", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
          }).catchError((e) {
            Toast.show("An Error Has Occured", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
          });
        },
      ),
    );
  }
}
