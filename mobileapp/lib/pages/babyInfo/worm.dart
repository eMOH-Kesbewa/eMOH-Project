import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/worm.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class WormTreat extends StatefulWidget {
  // String date1, date2, date3, date4, date5, date6, date7, date8, date9, date10;
  // String batchNo1,
  //     batchNo2,
  //     batchNo3,
  //     batchNo4,
  //     batchNo5,
  //     batchNo6,
  //     batchNo7,
  //     batchNo8,
  //     batchNo9,
  //     batchNo10;
  @override
  _WormTreatState createState() => _WormTreatState();
}

class _WormTreatState extends State<WormTreat> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
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
            return SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text(
                        AppLocalizations.of(context).tr('1.5year'),
                        style: TextStyle(fontSize: 20.0),
                      ),
                      title: Text(snapshot.data.date1h.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo1h),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('2year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date2.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo2),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('2.5year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date2h.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo2h),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('3year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date3.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo3),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('3.5year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date3h.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo3h),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('4year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date4.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo4),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('4.5year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date4h.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo4h),
                    ),
                    ListTile(
                      leading: Text(AppLocalizations.of(context).tr('5year'),
                          style: TextStyle(fontSize: 20.0)),
                      title: Text(snapshot.data.date5.substring(0, 10)),
                      trailing: Text(snapshot.data.batchNo5),
                    ),
                  ],
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}
