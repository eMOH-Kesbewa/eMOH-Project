import 'package:flutter/material.dart';
import 'package:mobileapp/services/style.dart';

class ChildHealthCard extends StatefulWidget {
  String title,
      date,
      eye,
      squint,
      cataract,
      hearingL,
      hearingR,
      weight,
      height,
      development,
      heart,
      lungs,
      hipJoint,
      inhProblems,
      otherDiseases,
      dentalSpots,
      deantalCavities,
      nightBlind,
      bitoSpots;
  @override
  _ChildHealthCardState createState() => _ChildHealthCardState();
}

class _ChildHealthCardState extends State<ChildHealthCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'The day came to clinic',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(
              widget.date), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
            leading: growBulletIcon,
            title: Text(
              'Change of eye size',
              style: TextStyle(fontSize: 15.0),
            ),
            trailing: Text(widget.eye)),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Squint',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .squint), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Cataract',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .cataract), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Hearing Left Ear',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .hearingL), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Hearing Right Ear',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .hearingR), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Hearing Right Ear',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .hearingR), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Weight Increasing',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .weight), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Height Increasing',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .height), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Heart Disease',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(
              widget.heart), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Lungs',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(
              widget.lungs), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Hip Joint',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .hipJoint), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
//inheited_problems
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Inheited Problems',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .inhProblems), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Inheited Problems',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .inhProblems), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        //other_diseases
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Other Diseases',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .otherDiseases), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        //dental_caries_white_brown_spots11
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Dental Caries White Brown Spots',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .dentalSpots), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Dental Cavities',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .deantalCavities), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Night Blindness',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .nightBlind), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
        ListTile(
          leading: growBulletIcon,
          title: Text(
            'Bito Spots',
            style: TextStyle(fontSize: 15.0),
          ),
          trailing: Text(widget
              .bitoSpots), //Text(snapshot.data.layingFaceDownOcc.toString()),
        ),
      ],
    );
  }
}
