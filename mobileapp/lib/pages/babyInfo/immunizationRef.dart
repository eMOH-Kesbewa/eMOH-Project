import 'package:flutter/material.dart';
import "package:mobileapp/services/babyService/immunizationRefService.dart";
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:mobileapp/widgets/refferanceCard.dart';

class ImmunizationRef extends StatefulWidget {
  @override
  _ImmunizationRefState createState() => _ImmunizationRefState();
}

class _ImmunizationRefState extends State<ImmunizationRef> {
  List<RefferanceCard> refcard = <RefferanceCard>[];
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Immunization Refferance'),
      ),
      body: SingleChildScrollView(
              child: FutureBuilder<Baby>(
          future: fetchBaby(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(),);
            }
            int loop = snapshot.data.date.length.toInt();
            //logger.wtf(snapshot.data.backRef.length);
            //logger.d(snapshot.data.backRef[0]);
            //logger.w(snapshot.data.backRef.isEmpty);
            for (int i = 0; i < loop; i++) {
              logger.wtf(i);
              //int val = i;
              //refcard.add(RefferanceCard('a','b','c','d'));
              //logger.w(snapshot.data.date[i]);
              String date = snapshot.data.date[i];
              
              String reason = snapshot.data.reason[i];
              String place = snapshot.data.place[i];
           //  String notes = snapshot.data.notes[i];

              logger.wtf(date);
              logger.d(reason);
              logger.i(place);
              //logger.v(notes);

              // refcard.add(RefferanceCard(date, reason, place, notes));
              // String date = snapshot.data.date[0];
              // reason = snapshot.data.reason[i],
              // place = snapshot.data.place[i],
             // notes = snapshot.data.backRef[i];

               refcard.add(RefferanceCard(date, reason, place));
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
