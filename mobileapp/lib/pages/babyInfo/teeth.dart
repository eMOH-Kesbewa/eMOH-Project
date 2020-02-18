import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/teethService.dart';
import 'package:mobileapp/widgets/teethCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class Teeth extends StatefulWidget {
  @override
  _TeethState createState() => _TeethState();
}

var logger = Logger();
bool formVis6mo,
    listVis6mo,
    formVis7mo,
    listVis7mo,
    formVis8mo,
    listVis8mo,
    formVis9mo,
    listVis9mo,
    formVis10mo,
    listVis10mo,
    formVis11mo,
    listVis11mo,
    formVis12mo,
    listVis12mo,
    formVis13mo,
    listVis13mo,
    formVis14mo,
    listVis14mo,
    formVis15mo,
    listVis15mo,
    formVis16mo,
    listVis16mo,
    formVis17mo,
    listVis17mo,
    formVis18mo,
    listVis18mo;

class _TeethState extends State<Teeth> {
  Future<Baby> baby;
  @override
  void initState() {
    baby = fetchBaby();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
          child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('teethcheck')),
        ),
        body: FutureBuilder<Baby>(
          future: baby,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            // logger.w('hello');
            // logger.wtf(snapshot.data.noOfTeeth6mo);
            // logger.v(snapshot.data.status6mo);
            logger.i(snapshot.data.status7mo);
            if (snapshot.data.status6mo == "httpdata") {
              formVis6mo = true;
              listVis6mo = false;
            } else {
              listVis6mo = true;
              formVis6mo = false;
            }
            if (snapshot.data.status7mo == "httpdata") {
              formVis7mo = true;
              listVis7mo = false;
            } else {
              listVis7mo = true;
              formVis7mo = false;
            }
            if (snapshot.data.status8mo == "httpdata") {
              formVis8mo = true;
              listVis8mo = false;
            } else {
              listVis8mo = true;
              formVis8mo = false;
            }
            if (snapshot.data.status9mo == "httpdata") {
              formVis9mo = true;
              listVis9mo = false;
            } else {
              listVis9mo = true;
              formVis9mo = false;
            }
            if (snapshot.data.status10mo == "httpdata") {
              formVis10mo = true;
              listVis10mo = false;
            } else {
              listVis10mo = true;
              formVis10mo = false;
            }
            if (snapshot.data.status11mo == "httpdata") {
              formVis11mo = true;
              listVis11mo = false;
            } else {
              listVis11mo = true;
              formVis11mo = false;
            }
            if (snapshot.data.status12mo == "httpdata") {
              formVis12mo = true;
              listVis12mo = false;
            } else {
              listVis12mo = true;
              formVis12mo = false;
            }
            if (snapshot.data.status13mo == "httpdata") {
              formVis13mo = true;
              listVis13mo = false;
            } else {
              listVis13mo = true;
              formVis13mo = false;
            }
            if (snapshot.data.status14mo == "httpdata") {
              formVis14mo = true;
              listVis14mo = false;
            } else {
              listVis14mo = true;
              formVis14mo = false;
            }
            if (snapshot.data.status15mo == "httpdata") {
              formVis15mo = true;
              listVis15mo = false;
            } else {
              listVis15mo = true;
              formVis15mo = false;
            }
            if (snapshot.data.status16mo == "httpdata") {
              formVis16mo = true;
              listVis16mo = false;
            } else {
              listVis16mo = true;
              formVis16mo = false;
            }
            if (snapshot.data.status17mo == "httpdata") {
              formVis17mo = true;
              listVis17mo = false;
            } else {
              listVis17mo = true;
              formVis17mo = false;
            }
            if (snapshot.data.status18mo == "httpdata") {
              formVis18mo = true;
              listVis18mo = false;
            } else {
              listVis18mo = true;
              formVis18mo = false;
            }

            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Container(width: 100.0, child: TextField()),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('sixmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date6mo,
                      snapshot.data.noOfTeeth6mo,
                      snapshot.data.status6mo,
                      formVis6mo,
                      listVis6mo,
                      "six_date",
                      "six_Number_of_teeth",
                      "six_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('sevenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date7mo,
                      snapshot.data.noOfTeeth7mo,
                      snapshot.data.status7mo,
                      formVis7mo,
                      listVis7mo,
                      "seven_date",
                      "seven_Number_of_teeth",
                      "seven_status"),

                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('eightmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date8mo,
                      snapshot.data.noOfTeeth8mo,
                      snapshot.data.status8mo,
                      formVis8mo,
                      listVis8mo,
                      "eight_date",
                      "eight_Number_of_teeth",
                      "eight_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('ninemonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date9mo,
                      snapshot.data.noOfTeeth9mo,
                      snapshot.data.status9mo,
                      formVis9mo,
                      listVis9mo,
                      "nine_date",
                      "nine_Number_of_teeth",
                      "nine_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('tenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date10mo,
                      snapshot.data.noOfTeeth10mo,
                      snapshot.data.status10mo,
                      formVis10mo,
                      listVis10mo,
                      "ten_date",
                      "ten_Number_of_teeth",
                      "ten_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('elevenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date11mo,
                      snapshot.data.noOfTeeth11mo,
                      snapshot.data.status11mo,
                      formVis11mo,
                      listVis11mo,
                      "eleven_date",
                      "eleven_Number_of_teeth",
                      "eleven_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('twelvemonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date12mo,
                      snapshot.data.noOfTeeth12mo,
                      snapshot.data.status12mo,
                      formVis12mo,
                      listVis12mo,
                      "twelve_date",
                      "twelve_Number_of_teeth",
                      "twelve_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('thirteenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date13mo,
                      snapshot.data.noOfTeeth13mo,
                      snapshot.data.status13mo,
                      formVis13mo,
                      listVis13mo,
                      "thirteen_date",
                      "thirteen_Number_of_teeth",
                      "thirteen_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('fourteenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date14mo,
                      snapshot.data.noOfTeeth14mo,
                      snapshot.data.status14mo,
                      formVis14mo,
                      listVis14mo,
                      "fouteen_date",
                      "fouteen_Number_of_teeth",
                      "fouteen_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('fifteenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date15mo,
                      snapshot.data.noOfTeeth15mo,
                      snapshot.data.status15mo,
                      formVis15mo,
                      listVis15mo,
                      "fifteen_date",
                      "fifteen_Number_of_teeth",
                      "fifteen_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('sixteenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date16mo,
                      snapshot.data.noOfTeeth16mo,
                      snapshot.data.status16mo,
                      formVis16mo,
                      listVis16mo,
                      "sixteen_date",
                      "sixteen_Number_of_teeth",
                      "sixteen_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('seventeenmonthsofbirth')),
                  ),
                  TeethCard(
                      snapshot.data.date17mo,
                      snapshot.data.noOfTeeth17mo,
                      snapshot.data.status17mo,
                      formVis17mo,
                      listVis17mo,
                      "seventeen_date",
                      "seventeen_Number_of_teeth",
                      "seventeen_status"),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage("images/mother.png"),
                      backgroundColor: Colors.grey.shade800,
                      //child: Text('From the First Month of Birth'),
                    ),
                    label: Text(AppLocalizations.of(context).tr('eighteenmonthsofbirth')),
                  ),
                  TeethCard(
                    snapshot.data.date18mo,
                    snapshot.data.noOfTeeth18mo,
                    snapshot.data.status18mo,
                    formVis18mo,
                    listVis18mo,
                    "eighteen_date",
                    "eighteen_Number_of_teeth",
                    "eighteen_status",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
