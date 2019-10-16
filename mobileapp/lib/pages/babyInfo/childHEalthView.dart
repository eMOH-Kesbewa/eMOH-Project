import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/childHealthService.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';

class ChildHealthView extends StatefulWidget {
  @override
  _ChildHealthViewState createState() => _ChildHealthViewState();
}

class _ChildHealthViewState extends State<ChildHealthView> {
  @override
  Widget build(BuildContext context) {
    //  Future baby = fetchBaby();
    //Choice index;
    return FutureBuilder<Baby>(
      future: fetchBaby(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          List<Choice> choices = <Choice>[
            Choice(
                title: '5 Years',
                date: snapshot.data.date5y,
                eye: snapshot.data.eye5y,
                squint: snapshot.data.squint5y,
                cataract: snapshot.data.cataract5y,
                sightL: snapshot.data.sightL5y,
                sightR: snapshot.data.sightR5y,
                nightBlind: snapshot.data.nightBlind5y,
                bitoSpots: snapshot.data.bitoSpots5y,
                hearingL: snapshot.data.heart5y,
                hearingR: snapshot.data.hearingR5y,
                weight: snapshot.data.weight5y,
                height: snapshot.data.height5y,
                heart: snapshot.data.heart5y,
                lungs: snapshot.data.lungs5y,
                hipJoint: snapshot.data.hipJoint5y,
                inhProblems: snapshot.data.inhProblems5y,
                otherDiseases: snapshot.data.otherDiseases5y,
                officer: snapshot.data.officer5y,
                dentalSpots: snapshot.data.dentalSpots5y,
                dentalCavities: snapshot.data.dentalCavities5y

                
 
                ),
          ];
          return DefaultTabController(
            length: choices.length,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Child Health'),
                bottom: TabBar(
                  isScrollable: true,
                  tabs: choices.map((Choice choice) {
                    //index = choice;
                    return Tab(
                      text: choice.title,
                      icon: Icon(choice.icon),
                    );
                  }).toList(),
                ),
              ),
              body: TabBarView(
                children: choices.map((Choice choice) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ChoiceCard(choice: choice),
                  );
                }).toList(),
              ),
            ),
          );
        }
      },
    );
  }
}

class Choice {
  const Choice(
      {this.date,
      this.eye,
      this.squint,
      this.cataract,
      this.hearingL,
      this.hearingR,
      this.weight,
      this.height,
      this.heart,
      this.lungs,
      this.hipJoint,
      this.inhProblems,
      this.otherDiseases,
      this.officer,
      this.dentalSpots,
      this.dentalCavities,
      this.nightBlind,
      this.bitoSpots,
      this.sightL,
      this.sightR,
      this.title,
      this.icon});

  final String title,
      date,
      eye,
      squint,
      cataract,
      hearingL,
      hearingR,
      weight,
      height,
      //development,
      heart,
      lungs,
      hipJoint,
      inhProblems,
      otherDiseases,
      officer,
      dentalSpots,
      dentalCavities,
      nightBlind,
      bitoSpots,
      sightL,
      sightR;
  final IconData icon;
}
