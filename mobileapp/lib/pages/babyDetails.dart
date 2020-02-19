/**
 * Grid View of baby
 */
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/pages/babyInfo/babyBasicInfo.dart';
import 'package:mobileapp/pages/babyInfo/babyprotection.dart';
import 'package:mobileapp/pages/babyInfo/graphHome.dart';
import 'package:mobileapp/pages/babyInfo/childHEalthView.dart';
import 'package:mobileapp/pages/babyInfo/eyeTest.dart';
import 'package:mobileapp/pages/babyInfo/growingView.dart';
import 'package:mobileapp/pages/babyInfo/hearTest.dart';
import 'package:mobileapp/pages/babyInfo/immunization.dart';
import 'package:mobileapp/pages/babyInfo/newBornBayHealthChart.dart';
import 'package:mobileapp/pages/babyInfo/teeth.dart';
import 'package:mobileapp/pages/babyInfo/vitaminA.dart';
import 'package:mobileapp/pages/babyInfo/worm.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/globals.dart' as globals;

Logger logger = Logger();

class BabyDetails extends StatefulWidget {
  @override
  _BabyDetailsState createState() => _BabyDetailsState();
}

class _BabyDetailsState extends State<BabyDetails> {
  String _value = '01';
  String hintText = 'Select Baby'; //for drop downbutton hint
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    // String dropdownValue = 'One';

    List<DropdownMenuItem<String>> dropDownItems = List();
    logger.d(globals.children);

    //not running this for loop

    try {
      for (int i = 1; i < globals.children + 1; i++) {
        dropDownItems.add(DropdownMenuItem<String>(
          //check drop
          value: '${i}',
          child: Text('Baby ${i}'),
        ));
      }
    } catch (e) {
      setState(() {}); //error mesg when no connection
      final errormsg = Scaffold(
        appBar: AppBar(
          title: Text('Babies'),
        ),
        body: Column(
          children: <Widget>[Text('No Internet Connection')],
        ),
      );
    }

    logger.wtf(dropDownItems.length);

    final selectBaby = DropdownButton<String>(
      items: dropDownItems,
      onChanged: (String value) {
        setState(() {
          try {
            //babyid = 1A100401
            //familyid = 1A1004
            _value = '0' + value;
            globals.babyId = globals.familyId + _value;
            print('baby id');
            logger.i(globals.babyId);
            hintText = 'Baby' + '${value}';
          } catch (e) {
            return Text('Error');
          }
        });
      },
      hint: Text(
        hintText,
        style: TextStyle(color: Colors.white),
      ),
      //  value: _value,
    );
//Basic info button
    final basicInfoBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff2660a4),
      child: EasyLocalizationProvider(
        data: data,
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                FontAwesomeIcons.userAlt,
                color: Colors.white,
                size: 50.0,
              ),
              SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(AppLocalizations.of(context).tr('basicInfo'),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible),
              ),
            ],
          ),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => BabyBasicInfo())),
        ),
      ),
    );
//Baby protection button
    final protectionBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff51a3a3),
      child: EasyLocalizationProvider(
        data: data,
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                FontAwesomeIcons.babyCarriage,
                color: Colors.white,
                size: 50.0,
              ),
              SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(AppLocalizations.of(context).tr('proBaby'),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible),
              ),
            ],
          ),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => BabyProtection())),
        ),
      ),
    );
    //Eye test button
    final eyeTestBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff8acb88),
      child: EasyLocalizationProvider(
        data: data,
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                FontAwesomeIcons.eye,
                color: Colors.white,
                size: 50.0,
              ),
              SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(AppLocalizations.of(context).tr('eyeTest'),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible),
              ),
            ],
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => EyeTest())),
        ),
      ),
    );
    //Hearing test Button
    final hearTestBtn = Material(
      elevation: .0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff228cdb),
      child: EasyLocalizationProvider(
        data: data,
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Icon(
                FontAwesomeIcons.assistiveListeningSystems,
                color: Colors.white,
                size: 50.0,
              ),
              SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(AppLocalizations.of(context).tr('hearingTest'),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible),
              ),
            ],
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HearTest())),
        ),
      ),
    );
    //Growth until five years button
    final untilFiveYearsBtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff593c8f),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.child,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('growth5'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GrowingView()),
            ),
          ),
        ));
    //new born baby health chart button
    final helthChartbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffeccf68),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.fileMedical,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('healthCard'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelthChart()),
            ),
          ),
        ));
    //Immunization button
    final immunizationbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xfff46f79),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.syringe,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('immuni'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Immunization()),
            ),
          ),
        ));
    //vitamin data button
    final vitaminAbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff68c8c8),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.tablets,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('vitaminA'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VitaminA()),
            ),
          ),
        ));
    //worm data button
    final wormbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffca8766),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.bacon,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('worm'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WormTreat()),
            ),
          ),
        ));
    //child health button
    final childHealthbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffc3e989),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.notesMedical,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                        AppLocalizations.of(context).tr('childHealthCard'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChildHealthView()),
            ),
          ),
        ));

    //teeth data button
    final teethbtn = Material(
        elevation: .0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffe0e0ce),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.notesMedical,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('teeths'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Teeth()), //navigate to teeth data button
            ),
          ),
        ));
    //chart home button
    final chartbtn = Material(
        elevation: 0.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff7c606b),
        child: EasyLocalizationProvider(
          data: data,
          child: MaterialButton(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Icon(
                  FontAwesomeIcons.chartBar,
                  color: Colors.white,
                  size: 50.0,
                ),
                SizedBox(
                  height: 3.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).tr('Chart'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GraphHome()), //navigate to graph home
            ),
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
          child: CustomScrollView(
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
                    vitaminAbtn,
                    wormbtn,
                    childHealthbtn,
                    teethbtn,
                    chartbtn,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
