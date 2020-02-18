import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class RefferanceCard extends StatefulWidget {
  String date = 'notset', reason = 'notset', place = 'notset', note = 'notset';
  RefferanceCard(
    this.date,
    this.reason,
    this.place,
  );
  @override
  _RefferanceCardState createState() => _RefferanceCardState();
}

class _RefferanceCardState extends State<RefferanceCard> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    try {
      return EasyLocalizationProvider(
        data: data,
        child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Text(AppLocalizations.of(context).tr('date')),

                trailing: Text(widget.date.substring(
                    0, 10)), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              ListTile(
                leading: Text(AppLocalizations.of(context).tr('reasonforreff')),

                trailing: Text(widget
                    .reason), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              ListTile(
                leading: Text(AppLocalizations.of(context).tr('placeofreff')),

                trailing: Text(widget
                    .place), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              // ListTile(
              //   leading: Text('Notes'),

              //   trailing: Text(widget.note), //Text(snapshot.data.layingFaceDownOcc.toString()),
              // ),
            ],
          ),
        ),
      );
    } catch (e) {
      return Text('No Data');
    }
  }
}
