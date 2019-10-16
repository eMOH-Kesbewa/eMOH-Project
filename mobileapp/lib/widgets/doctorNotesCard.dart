import 'package:flutter/material.dart';

class DoctorNotesCard extends StatefulWidget {
  String date = 'notset',note = 'notset';
  DoctorNotesCard(this.date,this.note);
  @override
  _DoctorNotesCardState createState() => _DoctorNotesCardState();
}

class _DoctorNotesCardState extends State<DoctorNotesCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Text('Date'),
              
              trailing: Text(widget.date.substring(0,10)), //Text(snapshot.data.layingFaceDownOcc.toString()),
            ),
            Text('Special Notes'),
            Text(widget.note),
        ],
      ),
    );
  }
}