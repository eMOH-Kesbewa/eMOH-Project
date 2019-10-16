import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyInfo/childHEalthView.dart';
//import 'package:mobileapp/pages/babyInfo/growingView.dart';
import 'package:mobileapp/services/style.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return SingleChildScrollView(
      child: Card(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: growBulletIcon,
                title: Text('Date'),
                trailing: Text(choice.date),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Eyes'),
                trailing: Text(choice.eye),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Squint'),
                trailing: Text(choice.squint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Cataract'),
                trailing: Text(choice.cataract),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Sight Left Eye'),
                trailing: Text(choice.sightL),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Sight Right Eye'),
                trailing: Text(choice.sightR),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('NIght Blind'),
                trailing: Text(choice.nightBlind),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Bito Spots'),
                trailing: Text(choice.bitoSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Hearing Left'),
                trailing: Text(choice.hearingL),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Hearing Right'),
                trailing: Text(choice.hearingR),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Weight'),
                trailing: Text(choice.weight),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Height'),
                trailing: Text(choice.height),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Heart'),
                trailing: Text(choice.heart),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Lungs'),
                trailing: Text(choice.lungs),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Hip Joint'),
                trailing: Text(choice.hipJoint),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Inherited Problems'),
                trailing: Text(choice.inhProblems),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Other Diseases'),
                trailing: Text(choice.otherDiseases),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Checked Officer'),
                trailing: Text(choice.officer),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Dental Spots'),
                trailing: Text(choice.dentalSpots),
              ),
              ListTile(
                leading: growBulletIcon,
                title: Text('Dental Cavities'),
                trailing: Text(choice.dentalCavities),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
