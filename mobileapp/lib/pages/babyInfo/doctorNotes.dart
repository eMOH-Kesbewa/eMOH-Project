import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/doctorNotes.dart';
import 'package:mobileapp/widgets/doctorNotesCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class DoctorNotes extends StatefulWidget {
  @override
  _DoctorNotesState createState() => _DoctorNotesState();
}

class _DoctorNotesState extends State<DoctorNotes> {
  List<DoctorNotesCard> refcard = <DoctorNotesCard>[];
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    int loop;
    try {
      return EasyLocalizationProvider(
        data: data,
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).tr('doctorNotes')),
          ),
          body: SingleChildScrollView(
            child: FutureBuilder<Baby>(
                future: fetchBaby(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData) {
                    try {
                      if (snapshot.data.date == null) {
                        loop = 1;
                      } else {
                        loop = snapshot.data.date.length.toInt();
                      }

                      // loop = snapshot.data.date.length.toInt();

                      for (int i = 0; i < loop; i++) {
                        String date = snapshot.data.date[i];

                        String notes = snapshot.data.notes[i];

                        refcard.add(DoctorNotesCard(date, notes));
                      }

                      return SingleChildScrollView(
                        child: Column(
                          children: refcard,
                        ),
                      );
                    } catch (e) {
                      return Text('No Data');
                    }
                  } else if (snapshot.hasError) {
                    return Text('No Data');
                  }
                }),
          ),
        ),
      );
    } catch (e) {
      return Text('No Data');
    }
  }
}
