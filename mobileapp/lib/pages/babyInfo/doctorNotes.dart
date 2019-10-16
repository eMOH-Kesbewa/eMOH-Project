import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/doctorNotes.dart';
import 'package:mobileapp/widgets/doctorNotesCard.dart';

class DoctorNotes extends StatefulWidget {
  @override
  _DoctorNotesState createState() => _DoctorNotesState();
}
 List<DoctorNotesCard> refcard = <DoctorNotesCard>[];

class _DoctorNotesState extends State<DoctorNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Notes'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Baby>(
          future: fetchBaby(),
          builder: (context, snapshot) {
            int loop = snapshot.data.date.length.toInt();

            for (int i = 0; i < loop; i++) {
              String date = snapshot.data.date[i];

              String notes = snapshot.data.notes[i];

              // refcard.add(RefferanceCard(date, reason, place, notes));
              // String date = snapshot.data.date[0];
              // reason = snapshot.data.reason[i],
              // place = snapshot.data.place[i],
              // notes = snapshot.data.backRef[i];

              refcard.add(DoctorNotesCard(date, notes));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: refcard,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
