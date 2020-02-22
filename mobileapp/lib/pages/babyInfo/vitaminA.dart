/**
 * View Vitamin data about baby
 */
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/immunizationRefService.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

Logger logger = Logger();

class VitaminA extends StatefulWidget {
  @override
  _VitaminAState createState() => _VitaminAState();
}

class _VitaminAState extends State<VitaminA> {
  Future baby = fetchBaby(); //This function is implemented on immunizationRefService.dart
  String date1, date2, date3, date4, date5, date6, date7, date8, date9, date10; //for dates

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
  void initState() {
    // TODO: implement initState
    super.initState();
    baby.then((it) {
      it.date1 = date1;
      it.date2 = date2;
      it.date3 = date3;
      it.date4 = date4;
      it.date5 = date5;
      it.date6 = date6;
      it.date7 = date7;
      it.date8 = date8;
      it.date9 = date9;
      it.date10 = date10;

      it.batchNo1 = batchNo1;
      it.batchNo2 = batchNo2;
      it.batchNo3 = batchNo3;
      it.batchNo4 = batchNo4;
      it.batchNo5 = batchNo5;
      it.batchNo6 = batchNo6;
      it.batchNo7 = batchNo7;
      it.batchNo8 = batchNo8;
      it.batchNo9 = batchNo9;
      it.batchNo10 = batchNo10;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    if (date1 == null) {
      date1 = "No Data";
    } else {
      date1 = date1.substring(0, 10);
    }
    if (date2 == null) {
      date2 = "No Data";
    } else {
      date2 = date2.substring(0, 10);
    }
    if (date3 == null) {
      date3 = "No Data";
    } else {
      date3 = date3.substring(0, 10);
    }
    if (date4 == null) {
      date4 = "No Data";
    } else {
      date4 = date4.substring(0, 10);
    }
    if (date5 == null) {
      date5 = "No Data";
    } else {
      date5 = date5.substring(0, 10);
    }
    if (date6 == null) {
      date6 = "No Data";
    } else {
      date6 = date6.substring(0, 10);
    }
    if (date7 == null) {
      date7 = "No Data";
    } else {
      date7 = date7.substring(0, 10);
    }
    if (date8 == null) {
      date8 = "No Data";
    } else {
      date8 = date8.substring(0, 10);
    }
    if (date9 == null) {
      date9 = "No Data";
    } else {
      date9 = date9.substring(0, 10);
    }
    if (date10 == null) {
      date10 = "No Data";
    } else {
      date10 = date10.substring(0, 10);
    }

    if (batchNo1 == null) {
      batchNo1 = "No Data";
    }
    if (batchNo2 == null) {
      batchNo2 = "No Data";
    }
    if (batchNo3 == null) {
      batchNo3 = "No Data";
    }
    if (batchNo4 == null) {
      batchNo4 = "No Data";
    }
    if (batchNo5 == null) {
      batchNo5 = "No Data";
    }
    if (batchNo6 == null) {
      batchNo6 = "No Data";
    }
    if (batchNo7 == null) {
      batchNo7 = "No Data";
    }
    if (batchNo8 == null) {
      batchNo8 = "No Data";
    }
    if (batchNo9 == null) {
      batchNo9 = "No Data";
    }
    if (batchNo10 == null) {
      batchNo10 = "No Data";
    }

    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('vitaminA')),
        ),
        body: FutureBuilder<Baby>(
          future: fetchBaby(), //This function is implemented on immunizationRefService.dart
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            try {
              return SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context).tr('sixmonth'),
                          style: TextStyle(fontSize: 20.0),
                        ),
                        title: Text(date1),
                        trailing: Text(batchNo1),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('1year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date2),
                        trailing: Text(batchNo2),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('1.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date3),
                        trailing: Text(batchNo3),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('2year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date4),
                        trailing: Text(batchNo4),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('2.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date9),
                        trailing: Text(batchNo10),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('3year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date5),
                        trailing: Text(batchNo5),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('3.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date6),
                        trailing: Text(batchNo6),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('4year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date7),
                        trailing: Text(batchNo7),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('4.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date8),
                        trailing: Text(batchNo8),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date9),
                        trailing: Text(batchNo9),
                      ),
                    ],
                  ),
                ),
              ));
            } catch (e) {
              logger.e(e);
              return Text('No Data');
            }
          },
        ),
      ),
    );
  }
}
