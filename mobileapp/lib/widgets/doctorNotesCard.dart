import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class DoctorNotesCard extends StatefulWidget {
  String date = 'notset',note = 'notset';
  DoctorNotesCard(this.date,this.note);
  @override
  _DoctorNotesCardState createState() => _DoctorNotesCardState();
}

class _DoctorNotesCardState extends State<DoctorNotesCard> {

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
          child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
                leading: Text(AppLocalizations.of(context).tr('date')),
                
                trailing: Text(widget.date.substring(0,10)), //Text(snapshot.data.layingFaceDownOcc.toString()),
              ),
              Text(AppLocalizations.of(context).tr('specialnotes')),
              Text(widget.note),
          ],
        ),
      ),
    );
  }
}