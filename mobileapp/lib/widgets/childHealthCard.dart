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
      dentalCavities,
      sightL,
      sightR,
      nightBlind,
      bitoSpots,
      officer;

  int cardNo;

  ChildHealthCard.oneFour(
    this.date,
    this.eye,
    this.squint,
    this.cataract,
    this.hearingL,
    this.hearingR,
    this.weight,
    this.height,
    //this.development,
    this.heart,
    this.lungs,
    this.hipJoint,
    this.inhProblems,
    this.otherDiseases,
  //  this.dentalSpots,
    this.officer,
    this.cardNo,
  );

  ChildHealthCard.sixEighteen(
    this.date,
    this.eye,
    this.squint,
    this.cataract,
    this.hearingL,
    this.hearingR,
    this.weight,
    this.height,
    //development,
    this.heart,
    this.lungs,
    this.hipJoint,
    this.inhProblems,
    this.otherDiseases,
    this.dentalSpots,
    this.dentalCavities,
    this.officer,
  );
  ChildHealthCard.threeyFoury(
    this.date,
    this.eye,
    this.squint,
    this.cataract,
    this.hearingL,
    this.hearingR,
    this.weight,
    this.height,
    //development,
    this.heart,
    this.lungs,
    this.hipJoint,
    this.inhProblems,
    this.otherDiseases,
    this.officer,
    this.dentalSpots,
    this.dentalCavities,
    this.nightBlind,
    this.bitoSpots,
    this.cardNo,
  );
  // this.date ,
  // this.eye ,
  // this.squint ,
  // this.cataract ,
  // this.hearingL ,
  // this.hearingR ,
  // this.weight ,
  // this.height ,
  // //development,
  // this.heart ,
  // this.lungs ,
  // this.hipJoint ,
  // this.inhProblems ,
  // this.otherDiseases ,
  // this.officer ,
  // this.dentalSpots ,
  // this.dentalCavities ,
  // this.nightBlind ,
  // this.bitoSpots ,
  // this.sightL ,
  // this.sightR ,this.cardNo);

  ChildHealthCard(
    this.date,
    this.eye,
    this.squint,
    this.cataract,
    this.hearingL,
    this.hearingR,
    this.weight,
    this.height,
    //development,
    this.heart,
    this.lungs,
    this.hipJoint,
    this.inhProblems,
    this.otherDiseases,
    this.officer,
    this.dentalSpots,
    this.dentalCavities,
    this.nightBlind,
    this.bitoSpots,
    this.sightL,
    this.sightR,
    this.cardNo,
  );
  @override
  _ChildHealthCardState createState() => _ChildHealthCardState();
}

class _ChildHealthCardState extends State<ChildHealthCard> {
  @override
  Widget build(BuildContext context) {
    //Text(snapshot.data.layingFaceDownOcc.toString()),
    if (widget.cardNo == 1) {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Date',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget
                    .date), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Change of Eye Size',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.eye),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Squint',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.squint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Cataract',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.cataract),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Left Ear Hearing',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hearingL),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Right Ear Hearing',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hearingR),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Weight',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.weight),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Height',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.height),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Heart Disease',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.heart),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Lungs',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.lungs),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Hip Joint',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hipJoint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Inheited Problems',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.inhProblems),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Other Disease',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.otherDiseases),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Desingation of Officer who checked',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.officer),
              ),
            ],
          ),
        ),
      );
    }
    if (widget.cardNo == 2) {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Date',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget
                    .date), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Change of Eye Size',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.eye),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Squint',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.squint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Cataract',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.cataract),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Left Ear Hearing',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hearingL),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Right Ear Hearing',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hearingR),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Dental Spots',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.dentalSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Weight',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.weight),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Height',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.height),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Heart Disease',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.heart),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Lungs',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.lungs),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Hip Joint',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hipJoint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Dental Spots',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.dentalSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Dental Cavities',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.dentalCavities),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Night Blind',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.nightBlind),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Bito Spots',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.bitoSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Inheited Problems',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.inhProblems),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Other Disease',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.otherDiseases),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Desingation of Officer who checked',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.officer),
              ),
            ],
          ),
        ),
      );
    } else {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Date',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget
                    .date), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Change of Eye Size',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.eye),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Squint',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.squint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Cataract',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.cataract),
              ),
               ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Sight of left eye',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.sightL),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Sight of right eye',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.sightR),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Left Ear Hearing',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hearingL),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Right Ear Hearing',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hearingR),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Dental Spots',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.dentalSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Weight',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.weight),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Height',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.height),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Heart Disease',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.heart),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Lungs',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.lungs),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Hip Joint',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.hipJoint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Dental Spots',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.dentalSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Dental Cavities',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.dentalCavities),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Night Blind',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.nightBlind),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Bito Spots',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.bitoSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Inheited Problems',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.inhProblems),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Other Disease',
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Text(widget.otherDiseases),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text(
                  'Desingation of Officer who checked',
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
}
