import 'package:flutter/material.dart';
//import 'package:mobileapp/pages/babyInfo/basicInfo.dart';
import 'package:mobileapp/pages/babyInfo/babyBasicInfo.dart';
import 'package:mobileapp/pages/babyInfo/babyprotection.dart';
import 'package:mobileapp/pages/babyInfo/childHealthView.dart';
import 'package:mobileapp/pages/babyInfo/eyeTest.dart';
import 'package:mobileapp/pages/babyInfo/growingView.dart';
import 'package:mobileapp/pages/babyInfo/hearTest.dart';
import 'package:mobileapp/pages/babyInfo/immunization.dart';
import 'package:mobileapp/pages/babyInfo/immunizationRef.dart';
import 'package:mobileapp/pages/babyInfo/newBornBayHealthChart.dart';
//import 'package:mobileapp/pages/babyInfo/untilFiveYears.dart';
import 'package:mobileapp/pages/babyInfo/untilFiveYearsStep.dart';
import 'package:mobileapp/pages/babyInfo/vitaminA.dart';
import 'package:mobileapp/pages/babyInfo/worm.dart';
import 'package:mobileapp/pages/bottomNavigation.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';

import '../services/globals.dart' as globals;

class BabyDetails extends StatefulWidget {
  @override
  _BabyDetailsState createState() => _BabyDetailsState();
}

class _BabyDetailsState extends State<BabyDetails> {
  String _value = '01';
  @override
  Widget build(BuildContext context) {
    // String dropdownValue = 'One';
    final selectBaby = DropdownButton<String>(
      items: [
        DropdownMenuItem<String>(
          value: '01',
          child: Text('Baby 1'),
        ),
        DropdownMenuItem<String>(
          value: '02',
          child: Text('Baby 2'),
        ),
        DropdownMenuItem<String>(
          value: '03',
          child: Text('Baby 3'),
        ),
      ],
      onChanged: (String value) {
        setState(() {
          _value = value;
          String tempId = globals.familyId + _value;
          print(globals.familyId);
          globals.babyId = tempId.substring(0, 6) + _value;
          print('baby id');
          print(globals.babyId);
        });
      },
      hint: Text('Baby 1'),
      value: _value,
    );

    final basicInfoBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(0.0),
      color: Color(0xffb30089),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Basic Information',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BabyBasicInfo())),
      ),
    );
    final protectionBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(0.0),
      color: Color(0xffb30089),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Protection of Baby',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BabyProtection())),
      ),
    );
    final eyeTestBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(0.0),
      color: Color(0xffb30089),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Eye Test',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => EyeTest())),
      ),
    );
    final hearTestBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(0.0),
      color: Color(0xffb30089),
      child: MaterialButton(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Hearing Test',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        //minWidth: MediaQuery.of(context).size.width / 2,
        //height: MediaQuery.of(context).size.width / 4,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HearTest())),
      ),
    );
    final untilFiveYearsBtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Growth Until Five Years',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GrowingView()),
          ),
        ));
    final helthChartbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Health Chart',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HelthChart()),
          ),
        ));
    final immunizationbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Immunization',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Immunization()),
          ),
        ));
    final immunizationRefbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Immunization Refferance',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ImmunizationRef()),
          ),
        ));
    final vitaminAbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Vitamin A',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VitaminA()),
          ),
        ));
    final wormbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Worm Treatments',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WormTreat()),
          ),
        ));
        final childHealthbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(0.0),
        color: Color(0xffb30089),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Text(
                  'Child Health Chart',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          //minWidth: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChildHealthView()),
          ),
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text('Babies'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
            child: selectBaby,
          ),
        ],
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                basicInfoBtn,
                protectionBtn,
                eyeTestBtn,
                hearTestBtn,
                untilFiveYearsBtn,
                helthChartbtn,
                immunizationbtn,
                immunizationRefbtn,
                vitaminAbtn,
                wormbtn,
                childHealthbtn,
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
