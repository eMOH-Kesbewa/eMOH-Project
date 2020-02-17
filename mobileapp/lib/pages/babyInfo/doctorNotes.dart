import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/doctorNotes.dart';
import 'package:mobileapp/widgets/doctorNotesCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

List<String> date = List();
List<String> notes = List();

class DoctorNotes extends StatefulWidget {
  @override
  _DoctorNotesState createState() => _DoctorNotesState();
}

class _DoctorNotesState extends State<DoctorNotes> {
  List<DoctorNotesCard> refcard = <DoctorNotesCard>[];
  Future baby = fetchBaby();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    baby.then((it) {
      it.date = date;
      it.notes = notes;
    });
  }

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
                      if (date.length == 0) {
                        date[1] = 'No Data';
                        notes[1] = 'No Data';
                      }
                      loop = date.length.toInt();

                      // loop = snapshot.data.date.length.toInt();

                      for (int i = 0; i < loop; i++) {
                        String datex = date[i];

                        String notesx = notes[i];

                        refcard.add(DoctorNotesCard(datex, notesx));
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
