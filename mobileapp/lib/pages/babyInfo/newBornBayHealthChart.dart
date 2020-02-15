import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/newBornHelth.dart';
import 'package:mobileapp/widgets/HelthCard.dart';
import 'package:mobileapp/widgets/growthCard.dart';
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
            future: fetchBaby(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                try {
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        HelthCard(
                            AppLocalizations.of(context).tr('skincolor'),
                            snapshot.data.oneSkin,
                            snapshot.data.sixSkin,
                            snapshot.data.fourteenSkin,
                            snapshot.data.fourtyTwoSkin,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('eyeschart'),
                            snapshot.data.oneEyes,
                            snapshot.data.sixEyes,
                            snapshot.data.fourteenEyes,
                            snapshot.data.fourtyTwoEyes,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('natureofnavel'),
                            snapshot.data.oneLob,
                            snapshot.data.sixLob,
                            snapshot.data.fourteenLob,
                            snapshot.data.fourtyTwoLob,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('temperature'),
                            snapshot.data.oneTemp,
                            snapshot.data.sixTemp,
                            snapshot.data.fourteenTemp,
                            snapshot.data.fourtyTwoTemp,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('onlybreast'),
                            snapshot.data.oneOnlyBreast,
                            snapshot.data.sixOnlyBreast,
                            snapshot.data.fourteenOnlyBreast,
                            snapshot.data.fourtyTwoOnlyBreast,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('breaststab'),
                            snapshot.data.oneBreastStab,
                            snapshot.data.sixBreastStab,
                            snapshot.data.fourteenBreastStab,
                            snapshot.data.fourtyTwoBreastStab,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('breastcon'),
                            snapshot.data.oneBreastCon,
                            snapshot.data.sixBreastCon,
                            snapshot.data.fourteenBreastStab,
                            snapshot.data.fourtyTwoBreastStab,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                        HelthCard(
                            AppLocalizations.of(context).tr('others'),
                            snapshot.data.oneOther,
                            snapshot.data.sixOther,
                            snapshot.data.fourteenOther,
                            snapshot.data.fourtyTwoTemp,
                            snapshot.data.date1,
                            snapshot.data.date2,
                            snapshot.data.date3,
                            snapshot.data.date4),
                      ],
                    ),
                  );
                } catch (e) {
                  return Text('No Data');
                }
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
