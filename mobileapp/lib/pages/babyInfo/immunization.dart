/**
 * View immunizaion test data
 */
import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/immunizationService.dart';
import 'package:mobileapp/widgets/immunizationCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class Immunization extends StatefulWidget {
  @override
  _ImmunizationState createState() => _ImmunizationState();
}

class _ImmunizationState extends State<Immunization> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data; //localization data
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).tr('immunization')),
        ),
        body: FutureBuilder<Baby>(
          future: fetchBaby(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return Text('You are not connected');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    //Overloaded constructor of ImmunizationCard Widget
                    //This widget has implemented on immunizationCard.dart
                    ImmunizationCard.bcg(
                      AppLocalizations.of(context).tr('immunizationtxt1'),
                      'B.C.G',
                      snapshot.data.bcgDate1,
                      snapshot.data.bcgEffects1,
                      snapshot.data.bcgBatchNo1,
                      'At Birth(if no scar event at 6th month)',
                      'B.C.G',
                      snapshot.data.bcgDate2,
                      snapshot.data.bcgEffects2,
                      snapshot.data.bcgBatchNo2,
                      true,
                      0,
                    ),
                    //Default constructor of ImmunizationCard Widget
                    ImmunizationCard(
                        AppLocalizations.of(context).tr('immunizationtxt2'),
                        'Pentavalent',
                        snapshot.data.pentDate1,
                        snapshot.data.pentEffects1,
                        snapshot.data.pentBatchNo1,
                        'OPV1',
                        snapshot.data.opvDate1,
                        snapshot.data.opvEffects1,
                        snapshot.data.opvBatchNo1,
                        2),
                    ImmunizationCard(
                        AppLocalizations.of(context).tr('immunizationtxt3'),
                        'Pentavalent2',
                        snapshot.data.pentDate2,
                        snapshot.data.pentEffects2,
                        snapshot.data.pentBatchNo2,
                        'OPV2',
                        snapshot.data.opvDate2,
                        snapshot.data.opvEffects2,
                        snapshot.data.opvBatchNo2,
                        2),
                    ImmunizationCard(
                        AppLocalizations.of(context).tr('immunizationtxt4'),
                        'Pentavalent3',
                        snapshot.data.pentDate3,
                        snapshot.data.pentEffects3,
                        snapshot.data.pentBatchNo3,
                        'OPV3',
                        snapshot.data.opvDate3,
                        snapshot.data.opvEffects3,
                        snapshot.data.opvBatchNo3,
                        2),
                    //Overloaded constructor of ImmunizationCard Widget
                    ImmunizationCard.one(
                        AppLocalizations.of(context).tr('immunizationtxt5'),
                        'Live JE',
                        snapshot.data.jeDate1,
                        snapshot.data.jeEffects1,
                        snapshot.data.jeBatchNo1,
                        1),
                    ImmunizationCard.one(
                        AppLocalizations.of(context).tr('immunizationtxt6'),
                        'Measles and Rubella(MR)/MMR1',
                        snapshot.data.rubDate1,
                        snapshot.data.rubEffects1,
                        snapshot.data.rubBatchNo1,
                        1),
                    ImmunizationCard(
                        AppLocalizations.of(context).tr('immunizationtxt7'),
                        'DPT',
                        snapshot.data.dptDate1,
                        snapshot.data.dptEffects1,
                        snapshot.data.dptBatchNo1,
                        'OPV4',
                        snapshot.data.opvDate4,
                        snapshot.data.opvEffects4,
                        snapshot.data.opvBatchNo4,
                        2),
                    ImmunizationCard.one(
                        AppLocalizations.of(context).tr('immunizationtxt8'),
                        'Measles and Rubella(MR)/MMR2',
                        snapshot.data.rubDate2,
                        snapshot.data.rubEffects2,
                        snapshot.data.rubBatchNo2,
                        1),
                    ImmunizationCard(
                        AppLocalizations.of(context).tr('immunizationtxt9'),
                        'DT',
                        snapshot.data.dtDate1,
                        snapshot.data.dtEffects1,
                        snapshot.data.dtBatchNo1,
                        'OPV5',
                        snapshot.data.opvDate5,
                        snapshot.data.opvEffects5,
                        snapshot.data.opvBatchNo5,
                        2),
                    ImmunizationCard.one(
                        AppLocalizations.of(context).tr('immunizationtxt10'),
                        'Adult tetanus and diphtheria',
                        snapshot.data.adultDipDate1,
                        snapshot.data.adultDipEffects1,
                        snapshot.data.adultDipBatchNo1,
                        1),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
