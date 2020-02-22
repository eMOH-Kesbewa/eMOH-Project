/**
 * View new born baby health details
 */
import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/newBornHelth.dart';
import 'package:mobileapp/widgets/HelthCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class HelthChart extends StatefulWidget {
  @override
  _HelthChartState createState() => _HelthChartState();
}

class _HelthChartState extends State<HelthChart> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).tr('healthCard')),
          ),
          body: FutureBuilder<Baby>(
            future: fetchBaby(), //This function is implemented on newBornHelth.dart
            builder: (context, snapshot) {
              
              //temp variables to check null
              String date1, date2, date3, date4;
              String oneSkin, sixSkin, fourteenSkin, fourtyTwoSkin;
              String oneEyes, sixEyes, fourteenEyes, fourtyTwoEyes;
              String oneLob, sixLob, fourteenLob, fourtyTwoLob;
              String oneTemp, sixTemp, fourteenTemp, fourtyTwoTemp;
              String oneOnlyBreast,
                  sixOnlyBreast,
                  fourteenOnlyBreast,
                  fourtyTwoOnlyBreast;
              String oneBreastStab,
                  sixBreastStab,
                  fourteenBreastStab,
                  fourtyTwoBreastStab;
              String oneBreastCon,
                  sixBreastCon,
                  fourteenBreastCon,
                  fourtyTwoBreastCon;
              String oneOther, sixOther, fourteenOther, fourtyTwoOther;

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                //Date
                if (snapshot.data.date1 == null) {
                  date1 = "No Data";
                } else {
                  date1 = snapshot.data.date1;
                }
                if (snapshot.data.date2 == null) {
                  date2 = "No Data";
                } else {
                  date2 = snapshot.data.date2;
                }
                if (snapshot.data.date3 == null) {
                  date3 = "No Data";
                } else {
                  date3 = snapshot.data.date3;
                }
                if (snapshot.data.date4 == null) {
                  date4 = "No Data";
                } else {
                  date4 = snapshot.data.date4;
                }

                //Skin

                if (snapshot.data.oneSkin == null) {
                  oneSkin = "No Data";
                } else {
                  oneSkin = snapshot.data.oneSkin;
                }

                if (snapshot.data.sixSkin == null) {
                  sixSkin = "No Data";
                } else {
                  sixSkin = snapshot.data.sixSkin;
                }
                if (snapshot.data.fourteenSkin == null) {
                  fourteenSkin = "No Data";
                } else {
                  fourteenSkin = snapshot.data.fourteenSkin;
                }
                if (snapshot.data.fourtyTwoSkin == null) {
                  fourtyTwoSkin = "No Data";
                } else {
                  fourtyTwoSkin = snapshot.data.fourtyTwoSkin;
                }

                //Eyes
                if (snapshot.data.oneEyes == null) {
                  oneEyes = "No Data";
                } else {
                  oneEyes = snapshot.data.oneEyes;
                }
                if (snapshot.data.sixEyes == null) {
                  sixEyes = "No Data";
                } else {
                  sixEyes = snapshot.data.sixEyes;
                }
                if (snapshot.data.fourteenEyes == null) {
                  fourteenEyes = "No Data";
                } else {
                  fourteenEyes = snapshot.data.fourteenEyes;
                }
                if (snapshot.data.fourtyTwoEyes == null) {
                  fourtyTwoEyes = "No Data";
                } else {
                  fourtyTwoEyes = snapshot.data.fourtyTwoEyes;
                }

                //Navel
                if (snapshot.data.oneLob == null) {
                  oneLob = "No Data";
                } else {
                  oneLob = snapshot.data.oneLob;
                }
                if (snapshot.data.sixLob == null) {
                  sixLob = "No Data";
                } else {
                  sixLob = snapshot.data.sixLob;
                }
                if (snapshot.data.fourteenLob == null) {
                  fourteenLob = "No Data";
                } else {
                  fourteenLob = snapshot.data.fourteenLob;
                }
                if (snapshot.data.fourtyTwoLob == null) {
                  fourtyTwoLob = "No Data";
                } else {
                  fourtyTwoLob = snapshot.data.fourtyTwoLob;
                }

                //Temperature
                if (snapshot.data.oneTemp == null) {
                  oneTemp = "No Data";
                } else {
                  oneTemp = snapshot.data.oneTemp;
                }
                if (snapshot.data.sixTemp == null) {
                  sixTemp = "No Data";
                } else {
                  sixTemp = snapshot.data.sixTemp;
                }
                if (snapshot.data.fourteenTemp == null) {
                  fourteenTemp = "No Data";
                } else {
                  fourteenTemp = snapshot.data.fourteenTemp;
                }
                if (snapshot.data.fourtyTwoTemp == null) {
                  fourtyTwoTemp = "No Data";
                } else {
                  fourtyTwoTemp = snapshot.data.fourtyTwoTemp;
                }

                //Only Breastfeeding
                if (snapshot.data.oneOnlyBreast == null) {
                  oneOnlyBreast = "No Data";
                } else {
                  oneOnlyBreast = snapshot.data.oneOnlyBreast;
                }
                if (snapshot.data.sixOnlyBreast == null) {
                  sixOnlyBreast = "No Data";
                } else {
                  sixOnlyBreast = snapshot.data.sixOnlyBreast;
                }
                if (snapshot.data.fourteenOnlyBreast == null) {
                  fourteenOnlyBreast = "No Data";
                } else {
                  fourteenOnlyBreast = snapshot.data.fourteenOnlyBreast;
                }
                if (snapshot.data.fourtyTwoOnlyBreast == null) {
                  fourtyTwoOnlyBreast = "No Data";
                } else {
                  fourtyTwoOnlyBreast = snapshot.data.fourtyTwoOnlyBreast;
                }

                //Breastfeeding Stab
                if (snapshot.data.oneBreastStab == null) {
                  oneBreastStab = "No Data";
                } else {
                  oneBreastStab = snapshot.data.oneBreastStab;
                }
                if (snapshot.data.sixBreastStab == null) {
                  sixBreastStab = "No Data";
                } else {
                  sixBreastStab = snapshot.data.sixBreastStab;
                }
                if (snapshot.data.fourteenBreastStab == null) {
                  fourteenBreastStab = "No Data";
                } else {
                  fourteenBreastStab = snapshot.data.fourteenBreastStab;
                }
                if (snapshot.data.fourtyTwoBreastStab == null) {
                  fourtyTwoBreastStab = "No Data";
                } else {
                  fourtyTwoBreastStab = snapshot.data.fourtyTwoBreastStab;
                }

                //Breastfeeding Con
                if (snapshot.data.oneBreastCon == null) {
                  oneBreastCon = "No Data";
                } else {
                  oneBreastCon = snapshot.data.oneBreastCon;
                }
                if (snapshot.data.sixBreastCon == null) {
                  sixBreastCon = "No Data";
                } else {
                  sixBreastCon = snapshot.data.sixBreastCon;
                }
                if (snapshot.data.fourteenBreastCon == null) {
                  fourteenBreastCon = "No Data";
                } else {
                  fourteenBreastCon = snapshot.data.fourteenBreastCon;
                }
                if (snapshot.data.fourtyTwoBreastCon == null) {
                  fourtyTwoBreastCon = "No Data";
                } else {
                  fourtyTwoBreastCon = snapshot.data.fourtyTwoBreastCon;
                }

                //Others
                if (snapshot.data.oneOther == null) {
                  oneOther = "No Data";
                } else {
                  oneOther = snapshot.data.oneOther;
                }
                if (snapshot.data.oneOther == null) {
                  sixOther = "No Data";
                } else {
                  sixOther = snapshot.data.sixOther;
                }
                if (snapshot.data.fourteenOther == null) {
                  fourteenOther = "No Data";
                } else {
                  fourteenOther = snapshot.data.fourteenOther;
                }
                if (snapshot.data.fourtyTwoOther == null) {
                  fourtyTwoOther = "No Data";
                } else {
                  fourtyTwoOther = snapshot.data.fourtyTwoOther;
                }

                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[

                      //Health Card widget is implemented on HelthCard.dart
                      HelthCard(
                          AppLocalizations.of(context).tr('skincolor'),
                          oneSkin,
                          sixSkin,
                          fourteenSkin,
                          fourtyTwoSkin,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('eyeschart'),
                          oneEyes,
                          sixEyes,
                          fourteenEyes,
                          fourtyTwoEyes,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('natureofnavel'),
                          oneLob,
                          sixLob,
                          fourteenLob,
                          fourtyTwoLob,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('temperature'),
                          oneTemp,
                          sixTemp,
                          fourteenTemp,
                          fourtyTwoTemp,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('onlybreast'),
                          oneOnlyBreast,
                          sixOnlyBreast,
                          fourteenOnlyBreast,
                          fourtyTwoOnlyBreast,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('breaststab'),
                          oneBreastStab,
                          sixBreastStab,
                          fourteenBreastStab,
                          fourtyTwoBreastStab,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('breastcon'),
                          oneBreastCon,
                          sixBreastCon,
                          fourteenBreastCon,
                          fourtyTwoBreastCon,
                          date1,
                          date2,
                          date3,
                          date4),
                      HelthCard(
                          AppLocalizations.of(context).tr('others'),
                          oneOther,
                          sixOther,
                          fourteenOther,
                          fourtyTwoOther,
                          date1,
                          date2,
                          date3,
                          date4),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
    );
  }
}
