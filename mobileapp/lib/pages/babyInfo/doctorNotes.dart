import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/doctorNotes.dart';
import 'package:mobileapp/widgets/doctorNotesCard.dart';

class DoctorNotes extends StatefulWidget {
  @override
  _DoctorNotesState createState() => _DoctorNotesState();
}



class _DoctorNotesState extends State<DoctorNotes> {
  List<DoctorNotesCard> refcard = <DoctorNotesCard>[];
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
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                int loop = snapshot.data.date.length.toInt();

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
              }
            }),
      ),
    );
  }
}
