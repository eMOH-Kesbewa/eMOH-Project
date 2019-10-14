import 'package:flutter/material.dart';

class RefferanceCard extends StatefulWidget {
  String date = 'notset',reason = 'notset',place = 'notset',note = 'notset';
  RefferanceCard(this.date,this.reason,this.place,);
  @override
  _RefferanceCardState createState() => _RefferanceCardState();
}

class _RefferanceCardState extends State<RefferanceCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Text('Date'),
              
              trailing: Text(widget.date.substring(0,10)), //Text(snapshot.data.layingFaceDownOcc.toString()),
            ),
            ListTile(
              leading: Text('Reason for refferals'),
              
              trailing: Text(widget.reason), //Text(snapshot.data.layingFaceDownOcc.toString()),
            ),
             ListTile(
              leading: Text('Place of refferal'),
              
              trailing: Text(widget.place), //Text(snapshot.data.layingFaceDownOcc.toString()),
            ),
            // ListTile(
            //   leading: Text('Notes'),
              
            //   trailing: Text(widget.note), //Text(snapshot.data.layingFaceDownOcc.toString()),
            // ),
           
        ],
      ),
    );
  }
}