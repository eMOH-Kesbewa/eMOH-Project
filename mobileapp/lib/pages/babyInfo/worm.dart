import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/worm.dart';
import 'package:easy_localization/easy_localization_provider.dart';

//1h,2,2h,3,3h,4,4h,5
String date1h, date2, date2h, date3, date3h, date4, date4h, date5;
String batchNo1h,
    batchNo2,
    batchNo2h,
    batchNo3,
    batchNo3h,
    batchNo4,
    batchNo4h,
    batchNo5;

class WormTreat extends StatefulWidget {
  @override
  _WormTreatState createState() => _WormTreatState();
}

class _WormTreatState extends State<WormTreat> {
  Future baby = fetchBaby();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    baby.then((it) {
      it.date1h = date1h;
      it.date2 = date2;
      it.date2h = date2h;
      it.date3 = date3;
      it.date3h = date3h;
      it.date4 = date4;
      it.date4h = date4h;
      it.date5 = date5;

      it.batchNo1h = batchNo1h;
      it.batchNo2 = batchNo2;
      it.batchNo2h = batchNo2h;
      it.batchNo3 = batchNo3;
      it.batchNo3h = batchNo3h;
      it.batchNo4 = batchNo4;
      it.batchNo4h = batchNo4h;
      it.batchNo5 = batchNo5;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    if (date1h == null) {
      date1h = 'No Data';
    }
    if (date2 == null) {
      date2 = 'No Data';
    }
    if (date2h == null) {
      date2h = 'No Data';
    }
    if (date3 == null) {
      date3 = 'No Data';
    }
    if (date3h == null) {
      date3h = 'No Data';
    }
    if (date4 == null) {
      date4 = 'No Data';
    }
    if (date4h == null) {
      date4h = 'No Data';
    }
    if (date5 == null) {
      date5 = 'No Data';
    }

    if (batchNo1h == null) {
      batchNo1h = "No Data";
    }

    if (batchNo2 == null) {
      batchNo2 = "No Data";
    }

    if (batchNo2h == null) {
      batchNo2h = "No Data";
    }

    if (batchNo3 == null) {
      batchNo3 = "No Data";
    }

    if (batchNo3h == null) {
      batchNo3h = "No Data";
    }

    if (batchNo4 == null) {
      batchNo4 = "No Data";
    }

    if (batchNo4h == null) {
      batchNo4h = "No Data";
    }

    if (batchNo5 == null) {
      batchNo5 = "No Data";
    }
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('worm')),
        ),
        body: FutureBuilder<Baby>(
          future: fetchBaby(),
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
                          AppLocalizations.of(context)
                              .tr('1.5year'), //1h,2,2h,3,3h,4,4h,5
                          style: TextStyle(fontSize: 20.0),
                        ),
                        title: Text(date1h),
                        trailing: Text(batchNo1h),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('2year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date2),
                        trailing: Text(batchNo2),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('2.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date2h),
                        trailing: Text(batchNo2h),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('3year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date3),
                        trailing: Text(batchNo3),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('3.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date3h),
                        trailing: Text(batchNo3h),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('4year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date4),
                        trailing: Text(batchNo4),
                      ),
                      ListTile(
                        leading: Text(
                            AppLocalizations.of(context).tr('4.5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date4h),
                        trailing: Text(batchNo4h),
                      ),
                      ListTile(
                        leading: Text(AppLocalizations.of(context).tr('5year'),
                            style: TextStyle(fontSize: 20.0)),
                        title: Text(date5),
                        trailing: Text(batchNo5),
                      ),
                    ],
                  ),
                ),
              ));
            } catch (e) {
              return Text('No Data');
            }
          },
        ),
      ),
    );
  }
}
