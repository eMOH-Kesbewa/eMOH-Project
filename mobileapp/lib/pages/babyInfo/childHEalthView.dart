/**
 * View Child health Details
 * Uses child Health card widget with overloaded constructors
 */

import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/childHealthService.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

//data of 1st month
String date1mo,
    eye1mo,
    squint1mo,
    cataract1mo,
    heart1mo,
    hearingR1mo,
    weight1mo,
    height1mo,
    lungs1mo,
    hipJoint1mo,
    inhProblems1mo,
    otherDiseases1mo,
    officer1mo;
//data of 2nd month
String date2mo,
    eye2mo,
    squint2mo,
    cataract2mo,
    heart2mo,
    hearingR2mo,
    weight2mo,
    height2mo,
    lungs2mo,
    hipJoint2mo,
    inhProblems2mo,
    otherDiseases2mo,
    officer2mo;
//data of 4th month
String date4mo,
    eye4mo,
    squint4mo,
    cataract4mo,
    heart4mo,
    hearingR4mo,
    weight4mo,
    height4mo,
    lungs4mo,
    hipJoint4mo,
    inhProblems4mo,
    otherDiseases4mo,
    officer4mo;
//data of 6th month
String date6mo,
    eye6mo,
    squint6mo,
    cataract6mo,
    heart6mo,
    hearingR6mo,
    weight6mo,
    height6mo,
    lungs6mo,
    hipJoint6mo,
    inhProblems6mo,
    otherDiseases6mo,
    officer6mo;
//data of 5th month
String date9mo,
    eye9mo,
    squint9mo,
    cataract9mo,
    heart9mo,
    hearingR9mo,
    weight9mo,
    height9mo,
    lungs9mo,
    hipJoint9mo,
    inhProblems9mo,
    otherDiseases9mo,
    officer9mo;
//data of 12th month
String date12mo,
    eye12mo,
    squint12mo,
    cataract12mo,
    heart12mo,
    hearingR12mo,
    weight12mo,
    height12mo,
    lungs12mo,
    hipJoint12mo,
    inhProblems12mo,
    otherDiseases12mo,
    officer12mo;
//data of 18th month
String date18mo,
    eye18mo,
    squint18mo,
    cataract18mo,
    heart18mo,
    hearingR18mo,
    weight18mo,
    height18mo,
    lungs18mo,
    hipJoint18mo,
    inhProblems18mo,
    otherDiseases18mo,
    officer18mo;
//data of 3rd year
String date3y,
    eye3y,
    squint3y,
    cataract3y,
    heart3y,
    hearingR3y,
    weight3y,
    height3y,
    lungs3y,
    hipJoint3y,
    inhProblems3y,
    otherDiseases3y,
    officer3y;
//data of 4th year
String date4y,
    eye4y,
    squint4y,
    cataract4y,
    heart4y,
    hearingR4y,
    weight4y,
    height4y,
    lungs4y,
    hipJoint4y,
    inhProblems4y,
    otherDiseases4y,
    officer4y;
//data of 5th year
String date5y,
    eye5y,
    squint5y,
    cataract5y,
    heart5y,
    hearingR5y,
    weight5y,
    height5y,
    lungs5y,
    hipJoint5y,
    inhProblems5y,
    otherDiseases5y,
    officer5y;

//dental data

String dentalSpots6mo,
    dentalCavities6mo,
    dentalSpots9mo,
    dentalCavities9mo,
    dentalSpots12mo,
    dentalCavities12mo,
    dentalSpots18mo,
    dentalCavities18mo,
    dentalSpots3y,
    dentalCavities3y,
    dentalSpots4y,
    dentalCavities4y,
    dentalSpots5y,
    dentalCavities5y;

//eye data
String nightBlind3y,
    bitoSpots3y,
    nightBlind4y,
    bitoSpots4y,
    nightBlind5y,
    bitoSpots5y;

String sightL5y, sightR5y;

class ChildHealthView extends StatefulWidget {
  @override
  _ChildHealthViewState createState() => _ChildHealthViewState();
}

class _ChildHealthViewState extends State<ChildHealthView> {
  Future baby = fetchBaby();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    baby.then((it) {
      it.date1mo = date1mo;
      it.eye1mo = eye1mo;
      it.squint1mo = squint1mo;
      it.cataract1mo = cataract1mo;
      it.heart1mo = heart1mo;
      it.hearingR1mo = hearingR1mo;
      it.weight1mo = weight1mo;
      it.height1mo = height1mo;
      it.lungs1mo = lungs1mo;
      it.hipJoint1mo = hipJoint1mo;
      it.inhProblems1mo = inhProblems1mo;
      it.otherDiseases1mo = otherDiseases1mo;
      it.officer1mo = officer1mo;

      it.date2mo = date2mo;
      it.eye2mo = eye2mo;
      it.squint2mo = squint2mo;
      it.cataract2mo = cataract2mo;
      it.heart2mo = heart2mo;
      it.hearingR2mo = hearingR2mo;
      it.weight2mo = weight2mo;
      it.height2mo = height2mo;
      it.lungs2mo = lungs2mo;
      it.hipJoint2mo = hipJoint2mo;
      it.inhProblems2mo = inhProblems2mo;
      it.otherDiseases2mo = otherDiseases2mo;
      it.officer2mo = officer2mo;
      it.date4mo = date4mo;
      it.eye4mo = eye4mo;
      it.squint4mo = squint4mo;
      it.cataract4mo = cataract4mo;
      it.heart4mo = heart4mo;
      it.hearingR4mo = hearingR4mo;
      it.weight4mo = weight4mo;
      it.height4mo = height4mo;
      it.lungs4mo = lungs4mo;
      it.hipJoint4mo = hipJoint4mo;
      it.inhProblems4mo = inhProblems4mo;
      it.otherDiseases4mo = otherDiseases4mo;
      it.officer4mo = officer4mo;

      it.date9mo = date9mo;
      it.eye9mo = eye9mo;
      it.squint9mo = squint9mo;
      it.cataract9mo = cataract9mo;
      it.heart9mo = heart9mo;
      it.hearingR9mo = hearingR9mo;
      it.weight9mo = weight9mo;
      it.height9mo = height9mo;
      it.lungs9mo = lungs9mo;
      it.hipJoint9mo = hipJoint9mo;
      it.inhProblems9mo = inhProblems9mo;
      it.otherDiseases9mo = otherDiseases9mo;
      it.officer9mo = officer9mo;

      it.date12mo = date12mo;
      it.eye12mo = eye12mo;
      it.squint12mo = squint12mo;
      it.cataract12mo = cataract12mo;
      it.heart12mo = heart12mo;
      it.hearingR12mo = hearingR12mo;
      it.weight12mo = weight12mo;
      it.height12mo = height12mo;
      it.lungs12mo = lungs12mo;
      it.hipJoint12mo = hipJoint12mo;
      it.inhProblems12mo = inhProblems12mo;
      it.otherDiseases12mo = otherDiseases12mo;
      it.officer12mo = officer12mo;

      it.date18mo = date18mo;
      it.eye18mo = eye18mo;
      it.squint18mo = squint18mo;
      it.cataract18mo = cataract18mo;
      it.heart18mo = heart18mo;
      it.hearingR18mo = hearingR18mo;
      it.weight18mo = weight18mo;
      it.height18mo = height18mo;
      it.lungs18mo = lungs18mo;
      it.hipJoint18mo = hipJoint18mo;
      it.inhProblems18mo = inhProblems18mo;
      it.otherDiseases18mo = otherDiseases18mo;
      it.officer18mo = officer18mo;

      it.date6mo = date6mo;
      it.eye6mo = eye6mo;
      it.squint6mo = squint6mo;
      it.cataract6mo = cataract6mo;
      it.heart6mo = heart6mo;
      it.hearingR6mo = hearingR6mo;
      it.weight6mo = weight6mo;
      it.height6mo = height6mo;
      it.lungs6mo = lungs6mo;
      it.hipJoint6mo = hipJoint6mo;
      it.inhProblems6mo = inhProblems6mo;
      it.otherDiseases6mo = otherDiseases6mo;
      it.officer6mo = officer6mo;

      it.date3y = date3y;
      it.eye3y = eye3y;
      it.squint3y = squint3y;
      it.cataract3y = cataract3y;
      it.heart3y = heart3y;
      it.hearingR3y = hearingR3y;
      it.weight3y = weight3y;
      it.height3y = height3y;
      it.lungs3y = lungs3y;
      it.hipJoint3y = hipJoint3y;
      it.inhProblems3y = inhProblems3y;
      it.otherDiseases3y = otherDiseases3y;
      it.officer3y = officer3y;

      it.date4y = date4y;
      it.eye4y = eye4y;
      it.squint4y = squint4y;
      it.cataract4y = cataract4y;
      it.heart4y = heart4y;
      it.hearingR4y = hearingR4y;
      it.weight4y = weight4y;
      it.height4y = height4y;
      it.lungs4y = lungs4y;
      it.hipJoint4y = hipJoint4y;
      it.inhProblems4y = inhProblems4y;
      it.otherDiseases4y = otherDiseases4y;
      it.officer4y = officer4y;

      it.date5y = date5y;
      it.eye5y = eye5y;
      it.squint5y = squint5y;
      it.cataract5y = cataract5y;
      it.heart5y = heart5y;
      it.hearingR5y = hearingR5y;
      it.weight5y = weight5y;
      it.height5y = height5y;
      it.lungs5y = lungs5y;
      it.hipJoint5y = hipJoint5y;
      it.inhProblems5y = inhProblems5y;
      it.otherDiseases5y = otherDiseases5y;
      it.officer5y = officer5y;

      it.dentalSpots6mo = dentalSpots6mo;
      it.dentalCavities6mo = dentalCavities6mo;
      it.dentalSpots9mo = dentalCavities6mo;
      it.dentalCavities9mo = dentalCavities6mo;
      it.dentalSpots12mo = dentalCavities6mo;
      it.dentalCavities12mo = dentalCavities6mo;
      it.dentalSpots18mo = dentalCavities6mo;
      it.dentalCavities18mo = dentalCavities6mo;
      it.dentalSpots3y = dentalCavities6mo;
      it.dentalCavities3y = dentalCavities6mo;
      it.dentalSpots4y = dentalCavities6mo;
      it.dentalCavities4y = dentalCavities6mo;
      it.dentalSpots5y = dentalCavities6mo;
      it.dentalCavities5y = dentalCavities6mo;

      it.nightBlind3y = nightBlind3y;
      it.bitoSpots3y = bitoSpots3y;
      it.nightBlind4y = nightBlind4y;
      it.bitoSpots4y = bitoSpots4y;
      it.nightBlind5y = nightBlind5y;
      it.bitoSpots5y = bitoSpots5y;

      it.sightL5y = sightL5y;
      it.sightR5y = sightR5y;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    if (date1mo == null) {
      date1mo = eye1mo = squint1mo = cataract1mo = heart1mo = hearingR1mo =
          weight1mo = height1mo = lungs1mo = hipJoint1mo =
              inhProblems1mo = otherDiseases1mo = officer1mo = "No Data";
    }

    if (date2mo == null) {
      date2mo = eye2mo = squint2mo = cataract2mo = heart2mo = hearingR2mo =
          weight2mo = height2mo = lungs2mo = hipJoint2mo =
              inhProblems2mo = otherDiseases2mo = officer2mo = "No Data";
    }
    if (date4mo == null) {
      date4mo = eye4mo = squint4mo = cataract4mo = heart4mo = hearingR4mo =
          weight4mo = height4mo = lungs4mo = hipJoint4mo =
              inhProblems4mo = otherDiseases4mo = officer4mo = "No Data";
    }
    if (date6mo == null) {
      date6mo = eye6mo = squint6mo = cataract6mo = heart6mo = hearingR6mo =
          weight6mo = height6mo = lungs6mo = hipJoint6mo = inhProblems6mo =
              otherDiseases6mo =
                  officer6mo = dentalSpots6mo = dentalCavities6mo = "No Data";
    }
    if (date9mo == null) {
      date9mo = eye9mo = squint9mo = cataract9mo = heart9mo = hearingR9mo =
          weight9mo = height9mo = lungs9mo = hipJoint9mo = inhProblems9mo =
              otherDiseases9mo =
                  officer9mo = dentalSpots9mo = dentalCavities9mo = "No Data";
    }
    if (date12mo == null) {
      date12mo = eye12mo = squint12mo = cataract12mo = heart12mo =
          hearingR12mo = weight12mo = height12mo = lungs12mo = hipJoint12mo =
              inhProblems12mo = otherDiseases12mo = officer12mo =
                  dentalSpots12mo = dentalCavities12mo = "No Data";
    }
    if (date18mo == null) {
      date18mo = eye18mo = squint18mo = cataract18mo = heart18mo =
          hearingR18mo = weight18mo = height18mo = lungs18mo = hipJoint18mo =
              inhProblems18mo = otherDiseases18mo = officer18mo =
                  dentalSpots18mo = dentalCavities18mo = "No Data";
    }
    if (date3y == null) {
      date3y = eye3y = squint3y = cataract3y = heart3y = hearingR3y = weight3y =
          height3y = lungs3y = hipJoint3y = inhProblems3y = otherDiseases3y =
              officer3y = nightBlind3y =
                  bitoSpots3y = dentalSpots3y = dentalCavities3y = "No Data";
    }
    if (date4y == null) {
      date4y = eye4y = squint4y = cataract4y = heart4y = hearingR4y = weight4y =
          height4y = lungs4y = hipJoint4y = inhProblems4y = otherDiseases4y =
              officer4y = nightBlind4y =
                  bitoSpots4y = dentalSpots4y = dentalCavities4y = "No Data";
    }
    if (date5y == null) {
      date5y = eye5y = squint5y = cataract5y = heart5y = hearingR5y = weight5y =
          height5y = lungs5y = hipJoint5y = inhProblems5y = otherDiseases5y =
              officer5y = nightBlind5y = bitoSpots5y = dentalSpots5y =
                  dentalCavities5y = sightL5y = sightR5y = "No Data";
    }

    return FutureBuilder<Baby>(
      future: fetchBaby(), //get baby data from childHealthService.dart file
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
              //overloaded constructor for 1-4 months
              Choice.onemotoFour(
                  title: AppLocalizations.of(context).tr('1month'),
                  date: date1mo,
                  eye: eye1mo,
                  squint: squint1mo,
                  cataract: cataract1mo,
                  hearingL: heart1mo,
                  hearingR: hearingR1mo,
                  weight: weight1mo,
                  height: height1mo,
                  heart: heart1mo,
                  lungs: lungs1mo,
                  hipJoint: hipJoint1mo,
                  inhProblems: inhProblems1mo,
                  otherDiseases: otherDiseases1mo,
                  officer: officer6mo,
                  count: 4),
              Choice.onemotoFour(
                  title: AppLocalizations.of(context).tr('2month'),
                  date: date2mo,
                  eye: eye2mo,
                  squint: squint2mo,
                  cataract: cataract2mo,
                  hearingL: heart2mo,
                  hearingR: hearingR2mo,
                  weight: weight2mo,
                  height: height2mo,
                  heart: heart2mo,
                  lungs: lungs2mo,
                  hipJoint: hipJoint2mo,
                  inhProblems: inhProblems2mo,
                  otherDiseases: otherDiseases2mo,
                  officer: officer6mo,
                  count: 4),
              Choice.onemotoFour(
                  title: AppLocalizations.of(context).tr('4month'),
                  date: date4mo,
                  eye: eye4mo,
                  squint: squint4mo,
                  cataract: cataract4mo,
                  hearingL: heart4mo,
                  hearingR: hearingR4mo,
                  weight: weight4mo,
                  height: height4mo,
                  heart: heart4mo,
                  lungs: lungs4mo,
                  hipJoint: hipJoint4mo,
                  inhProblems: inhProblems4mo,
                  otherDiseases: otherDiseases4mo,
                  officer: officer4mo,
                  count: 4),

              //overloaded constructor for 6-18 months
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('6month'),
                  date: date6mo,
                  squint: squint6mo,
                  cataract: cataract6mo,
                  hearingL: heart6mo,
                  hearingR: hearingR6mo,
                  weight: weight6mo,
                  height: height6mo,
                  heart: heart6mo,
                  lungs: lungs6mo,
                  hipJoint: hipJoint6mo,
                  inhProblems: inhProblems6mo,
                  otherDiseases: otherDiseases6mo,
                  officer: officer6mo,
                  dentalSpots: dentalSpots6mo,
                  dentalCavities: dentalCavities6mo,
                  count: 3),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('9month'),
                  date: date9mo,
                  eye: eye9mo,
                  squint: squint9mo,
                  cataract: cataract9mo,
                  hearingL: heart9mo,
                  hearingR: hearingR9mo,
                  weight: weight9mo,
                  height: height9mo,
                  heart: heart9mo,
                  lungs: lungs9mo,
                  hipJoint: hipJoint9mo,
                  inhProblems: inhProblems9mo,
                  otherDiseases: otherDiseases9mo,
                  officer: officer9mo,
                  dentalSpots: dentalSpots9mo,
                  dentalCavities: dentalCavities9mo,
                  count: 3),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('12month'),
                  date: date12mo,
                  eye: eye12mo,
                  squint: squint12mo,
                  cataract: cataract12mo,
                  hearingL: heart12mo,
                  hearingR: hearingR12mo,
                  weight: weight12mo,
                  height: height12mo,
                  heart: heart12mo,
                  lungs: lungs12mo,
                  hipJoint: hipJoint12mo,
                  inhProblems: inhProblems12mo,
                  otherDiseases: otherDiseases12mo,
                  officer: officer12mo,
                  dentalSpots: dentalSpots12mo,
                  dentalCavities: dentalCavities12mo,
                  count: 3),
              Choice.sixmotoEighteen(
                  title: AppLocalizations.of(context).tr('18month'),
                  date: date18mo,
                  eye: eye18mo,
                  squint: squint18mo,
                  cataract: cataract18mo,
                  hearingL: heart18mo,
                  hearingR: hearingR18mo,
                  weight: weight18mo,
                  height: height18mo,
                  heart: heart18mo,
                  lungs: lungs18mo,
                  hipJoint: hipJoint18mo,
                  inhProblems: inhProblems18mo,
                  otherDiseases: otherDiseases18mo,
                  officer: officer18mo,
                  dentalSpots: dentalSpots18mo,
                  dentalCavities: dentalCavities18mo,
                  count: 3),
              //overloaded constructor for 4-3 years
              Choice.fourToThree(
                  title: AppLocalizations.of(context).tr('3year'),
                  date: date3y,
                  eye: eye3y,
                  squint: squint3y,
                  cataract: cataract3y,
                  nightBlind: nightBlind3y,
                  bitoSpots: bitoSpots3y,
                  hearingL: heart3y,
                  hearingR: hearingR3y,
                  weight: weight3y,
                  height: height3y,
                  heart: heart3y,
                  lungs: lungs3y,
                  hipJoint: hipJoint3y,
                  inhProblems: inhProblems3y,
                  otherDiseases: otherDiseases3y,
                  officer: officer3y,
                  dentalSpots: dentalSpots3y,
                  dentalCavities: dentalCavities3y,
                  count: 2),
              Choice.fourToThree(
                  title: AppLocalizations.of(context).tr('4year'),
                  date: date4y,
                  eye: eye4y,
                  squint: squint4y,
                  cataract: cataract4y,
                  nightBlind: nightBlind4y,
                  bitoSpots: bitoSpots4y,
                  hearingL: heart4y,
                  hearingR: hearingR4y,
                  weight: weight4y,
                  height: height4y,
                  heart: heart4y,
                  lungs: lungs4y,
                  hipJoint: hipJoint4y,
                  inhProblems: inhProblems4y,
                  otherDiseases: otherDiseases4y,
                  officer: officer4y,
                  dentalSpots: dentalSpots4y,
                  dentalCavities: dentalCavities4y,
                  count: 2),
              //Default constructor for 5 years
              Choice(
                  title: AppLocalizations.of(context).tr('5year'),
                  date: date5y,
                  eye: eye5y,
                  squint: squint5y,
                  cataract: cataract5y,
                  sightL: sightL5y,
                  sightR: sightR5y,
                  nightBlind: nightBlind5y,
                  bitoSpots: bitoSpots5y,
                  hearingL: heart5y,
                  hearingR: hearingR5y,
                  weight: weight5y,
                  height: height5y,
                  heart: heart5y,
                  lungs: lungs5y,
                  hipJoint: hipJoint5y,
                  inhProblems: inhProblems5y,
                  otherDiseases: otherDiseases5y,
                  officer: officer5y,
                  dentalSpots: dentalSpots5y,
                  dentalCavities: dentalCavities5y,
                  count: 1),
            ];
            return DefaultTabController(
                length: choices.length, //lenght of the tab view
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                        AppLocalizations.of(context).tr('ChildHealthCard')),
                    bottom: TabBar(
                      isScrollable: true, //to scroll tab view
                      tabs: choices.map((Choice choice) {
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
            logger.e(e);
            return Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context).tr('childHealthCard')),
              ),
              body: Container(
                child: Text('No Data'), //If no data found this will display
              ),
            );
          }
        }
      },
    );
  }
}

//For tab view
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
  ////overloaded constructor for 4-3 months
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
//overloaded constructor for 6-18 months
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
//overloaded constructor for 1-4 months
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
  final IconData icon; //tab view icon
  int count;
}
