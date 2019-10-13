import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/immunizationRefService.dart';

class VitaminA extends StatefulWidget {
  String date1, date2, date3, date4, date5, date6, date7, date8, date9, date10;
  String batchNo1,
      batchNo2,
      batchNo3,
      batchNo4,
      batchNo5,
      batchNo6,
      batchNo7,
      batchNo8,
      batchNo9,
      batchNo10;
  @override
  _VitaminAState createState() => _VitaminAState();
}

class _VitaminAState extends State<VitaminA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vitamin A'),
      ),
      body: FutureBuilder<Baby>(
        future: fetchBaby(),
        builder: (context, snapshot) {
          return SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Text('Vitamin A'),
                  ListTile(
                    leading: Text('Six Months'),
                    title: Text(snapshot.data.date1),
                    trailing: Text(snapshot.data.batchNo1),
                  ),
                  ListTile(
                    leading: Text('1 Year'),
                    title: Text(snapshot.data.date2),
                    trailing: Text(snapshot.data.batchNo2),
                  ),
                  ListTile(
                    leading: Text('1.5 Year'),
                    title: Text(snapshot.data.date3),
                    trailing: Text(snapshot.data.batchNo3),
                  ),
                  ListTile(
                    leading: Text('2 Years'),
                    title: Text(snapshot.data.date4),
                    trailing: Text(snapshot.data.batchNo4),
                  ),
                  ListTile(
                    leading: Text('3 Years'),
                    title: Text(snapshot.data.date5),
                    trailing: Text(snapshot.data.batchNo5),
                  ),
                  ListTile(
                    leading: Text('3.5 Years'),
                    title: Text(snapshot.data.date6),
                    trailing: Text(snapshot.data.batchNo6),
                  ),
                  ListTile(
                    leading: Text('4 Years'),
                    title: Text(snapshot.data.date7),
                    trailing: Text(snapshot.data.batchNo7),
                  ),
                  ListTile(
                    leading: Text('4.5 Years'),
                    title: Text(snapshot.data.date8),
                    trailing: Text(snapshot.data.batchNo8),
                  ),
                  ListTile(
                    leading: Text('5 Years'),
                    title: Text(snapshot.data.date9),
                    trailing: Text(snapshot.data.batchNo9),
                  ),
                  ListTile(
                    leading: Text('Six Months'),
                    title: Text(snapshot.data.date9),
                    trailing: Text(snapshot.data.batchNo10),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
