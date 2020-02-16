import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/childHealthService.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class ChildHealthView extends StatefulWidget {
  @override
  _ChildHealthViewState createState() => _ChildHealthViewState();
}

class _ChildHealthViewState extends State<ChildHealthView> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return FutureBuilder<Baby>(
      future: fetchBaby(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return EasyLocalizationProvider(
            data: data,
            child: Scaffold(
              appBar: AppBar(
                  title:
                      Text(AppLocalizations.of(context).tr('childHealthCard'))),
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        } else {
          try {
            List<Choice> choices = <Choice>[
              Choice.onemotoFour(
                  title: AppLocalizations.of(context).tr('1month'),
                  date: snapshot.data.date1mo.substring(0, 10),
                  eye: snapshot.data.eye1mo,
                  squint: snapshot.data.squint1mo,
                  cataract: snapshot.data.cataract1mo,
                  hearingL: snapshot.data.heart1mo,
                  hearingR: snapshot.data.hearingR1mo,
                  weight: snapshot.data.weight1mo,
                  height: snapshot.data.height1mo,
                  heart: snapshot.data.heart1mo,
                  lungs: snapshot.data.lungs1mo,
                  hipJoint: snapshot.data.hipJoint1mo,
                  inhProblems: snapshot.data.inhProblems1mo,
                  otherDiseases: snapshot.data.otherDiseases1mo,
                  officer: snapshot.data.officer6mo,
                  count: 4),
              Choice.onemotoFour(
                  title: AppLocalizations.of(context).tr('2month'),
                  date: snapshot.data.date2mo.substring(0, 10),
                  eye: snapshot.data.eye2mo,
                  squint: snapshot.data.squint2mo,
                  cataract: snapshot.data.cataract2mo,
                  hearingL: snapshot.data.heart2mo,
                  hearingR: snapshot.data.hearingR2mo,
                  weight: snapshot.data.weight2mo,
                  height: snapshot.data.height2mo,
                  heart: snapshot.data.heart2mo,
                  lungs: snapshot.data.lungs2mo,
                  hipJoint: snapshot.data.hipJoint2mo,
                  inhProblems: snapshot.data.inhProblems2mo,
                  otherDiseases: snapshot.data.otherDiseases2mo,
                  officer: snapshot.data.officer6mo,
                  count: 4),
              Choice.onemotoFour(
                  title: AppLocalizations.of(context).tr('4month'),
                  date: snapshot.data.date4mo.substring(0, 10),
                  eye: snapshot.data.eye4mo,
                  squint: snapshot.data.squint4mo,
                  cataract: snapshot.data.cataract4mo,
                  hearingL: snapshot.data.heart4mo,
                  hearingR: snapshot.data.hearingR4mo,
                  weight: snapshot.data.weight4mo,
                  height: snapshot.data.height4mo,
                  heart: snapshot.data.heart4mo,
                  lungs: snapshot.data.lungs4mo,
                  hipJoint: snapshot.data.hipJoint4mo,
                  inhProblems: snapshot.data.inhProblems4mo,
                  otherDiseases: snapshot.data.otherDiseases4mo,
                  officer: snapshot.data.officer4mo,
                  count: 4),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('6month'),
                  date: snapshot.data.date6mo.substring(0, 10),
                  eye: snapshot.data.eye6mo,
                  squint: snapshot.data.squint6mo,
                  cataract: snapshot.data.cataract6mo,
                  hearingL: snapshot.data.heart6mo,
                  hearingR: snapshot.data.hearingR6mo,
                  weight: snapshot.data.weight6mo,
                  height: snapshot.data.height6mo,
                  heart: snapshot.data.heart6mo,
                  lungs: snapshot.data.lungs6mo,
                  hipJoint: snapshot.data.hipJoint6mo,
                  inhProblems: snapshot.data.inhProblems6mo,
                  otherDiseases: snapshot.data.otherDiseases6mo,
                  officer: snapshot.data.officer6mo,
                  dentalSpots: snapshot.data.dentalSpots6mo,
                  dentalCavities: snapshot.data.dentalCavities6mo,
                  count: 3),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('9month'),
                  date: snapshot.data.date9mo.substring(0, 10),
                  eye: snapshot.data.eye9mo,
                  squint: snapshot.data.squint9mo,
                  cataract: snapshot.data.cataract9mo,
                  hearingL: snapshot.data.heart9mo,
                  hearingR: snapshot.data.hearingR9mo,
                  weight: snapshot.data.weight9mo,
                  height: snapshot.data.height9mo,
                  heart: snapshot.data.heart9mo,
                  lungs: snapshot.data.lungs9mo,
                  hipJoint: snapshot.data.hipJoint9mo,
                  inhProblems: snapshot.data.inhProblems9mo,
                  otherDiseases: snapshot.data.otherDiseases9mo,
                  officer: snapshot.data.officer9mo,
                  dentalSpots: snapshot.data.dentalSpots9mo,
                  dentalCavities: snapshot.data.dentalCavities9mo,
                  count: 3),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('12month'),
                  date: snapshot.data.date12mo.substring(0, 10),
                  eye: snapshot.data.eye12mo,
                  squint: snapshot.data.squint12mo,
                  cataract: snapshot.data.cataract12mo,
                  hearingL: snapshot.data.heart12mo,
                  hearingR: snapshot.data.hearingR12mo,
                  weight: snapshot.data.weight12mo,
                  height: snapshot.data.height12mo,
                  heart: snapshot.data.heart12mo,
                  lungs: snapshot.data.lungs12mo,
                  hipJoint: snapshot.data.hipJoint12mo,
                  inhProblems: snapshot.data.inhProblems12mo,
                  otherDiseases: snapshot.data.otherDiseases12mo,
                  officer: snapshot.data.officer12mo,
                  dentalSpots: snapshot.data.dentalSpots12mo,
                  dentalCavities: snapshot.data.dentalCavities12mo,
                  count: 3),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('18month'),
                  date: snapshot.data.date18mo.substring(0, 10),
                  eye: snapshot.data.eye18mo,
                  squint: snapshot.data.squint18mo,
                  cataract: snapshot.data.cataract18mo,
                  hearingL: snapshot.data.heart18mo,
                  hearingR: snapshot.data.hearingR18mo,
                  weight: snapshot.data.weight18mo,
                  height: snapshot.data.height18mo,
                  heart: snapshot.data.heart18mo,
                  lungs: snapshot.data.lungs18mo,
                  hipJoint: snapshot.data.hipJoint18mo,
                  inhProblems: snapshot.data.inhProblems18mo,
                  otherDiseases: snapshot.data.otherDiseases18mo,
                  officer: snapshot.data.officer18mo,
                  dentalSpots: snapshot.data.dentalSpots18mo,
                  dentalCavities: snapshot.data.dentalCavities18mo,
                  count: 3),
              Choice.fourToThree(
                  title: AppLocalizations.of(context).tr('3year'),
                  date: snapshot.data.date3y,
                  eye: snapshot.data.eye3y,
                  squint: snapshot.data.squint3y,
                  cataract: snapshot.data.cataract3y,
                  nightBlind: snapshot.data.nightBlind3y,
                  bitoSpots: snapshot.data.bitoSpots3y,
                  hearingL: snapshot.data.heart3y,
                  hearingR: snapshot.data.hearingR3y,
                  weight: snapshot.data.weight3y,
                  height: snapshot.data.height3y,
                  heart: snapshot.data.heart3y,
                  lungs: snapshot.data.lungs3y,
                  hipJoint: snapshot.data.hipJoint3y,
                  inhProblems: snapshot.data.inhProblems3y,
                  otherDiseases: snapshot.data.otherDiseases3y,
                  officer: snapshot.data.officer3y,
                  dentalSpots: snapshot.data.dentalSpots3y,
                  dentalCavities: snapshot.data.dentalCavities3y,
                  count: 2),
              Choice.fourToThree(
                  title: AppLocalizations.of(context).tr('4year'),
                  date: snapshot.data.date4y,
                  eye: snapshot.data.eye4y,
                  squint: snapshot.data.squint4y,
                  cataract: snapshot.data.cataract4y,
                  nightBlind: snapshot.data.nightBlind4y,
                  bitoSpots: snapshot.data.bitoSpots4y,
                  hearingL: snapshot.data.heart4y,
                  hearingR: snapshot.data.hearingR4y,
                  weight: snapshot.data.weight4y,
                  height: snapshot.data.height4y,
                  heart: snapshot.data.heart4y,
                  lungs: snapshot.data.lungs4y,
                  hipJoint: snapshot.data.hipJoint4y,
                  inhProblems: snapshot.data.inhProblems4y,
                  otherDiseases: snapshot.data.otherDiseases4y,
                  officer: snapshot.data.officer4y,
                  dentalSpots: snapshot.data.dentalSpots4y,
                  dentalCavities: snapshot.data.dentalCavities4y,
                  count: 2),
              Choice(
                  title: AppLocalizations.of(context).tr('5year'),
                  date: snapshot.data.date5y.substring(0, 10),
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
                  dentalCavities: snapshot.data.dentalCavities5y,
                  count: 1),
            ];
            return DefaultTabController(
                length: choices.length,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                        AppLocalizations.of(context).tr('ChildHealthCard')),
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
                ));
          } catch (e) {
            //return Text("No Data");
            return Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context).tr('childHealthCard')),
              ),
              body: Container(
                child: Text('No Data'),
              ),
            );
          }
        }
      },
    );
  }
}

class Choice {
  Choice(
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
      this.icon,
      this.count});
  Choice.fourToThree(
      {this.title,
      this.date,
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
      this.icon,
      this.count});

  Choice.sixmotoEighteen(
      {this.title,
      this.date,
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
      this.icon,
      this.count});

  Choice.onemotoFour(
      {this.title,
      this.date,
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
      this.icon,
      this.count});
  String title,
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
  int count;
}
