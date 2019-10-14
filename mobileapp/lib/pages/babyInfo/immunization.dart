import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/immunizationService.dart';
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:mobileapp/widgets/immunizationCard.dart';

class Immunization extends StatefulWidget {
  @override
  _ImmunizationState createState() => _ImmunizationState();
}

class _ImmunizationState extends State<Immunization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Immunization'),
      ),
      body: FutureBuilder<Baby>(
        future: fetchBaby(),
        builder: (context, snapshot) {
          logger.w(snapshot.data.bcgEffects1);
          if(snapshot.connectionState == ConnectionState.none){
            return Text('You are not connected');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());

          } else {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text('hello'),
                  // ImmunizationCard(
                  //     'Two months completed',
                  //     'Pentavalent',
                  //     'snapshot.data.pentDate1',
                  //     'snapshot.data.pentEffects1',
                  //     'snapshot.data.pentBatchNo1',
                  //     'OPV1',
                  //     'snapshot.data.opvDate1',
                  //     'snapshot.data.opvEffects1',
                  //     'snapshot.data.opvBatchNo1',
                  //     2),
                  // ImmunizationCard.one(
                  //     'Nine month completed',
                  //     'Live JE',
                  //     'snapshot.data.jeDate1',
                  //     'snapshot.data.jeEffects1',
                  //     'snapshot.data.jeBatchNo1',
                  //     1),

                  // ImmunizationCard.bcg(
                  //   'title',
                  //   'vaccine1',
                  //   'date1',
                  //   'effects1',
                  //   'batchNo1',
                  //   true,
                  // ),
                  // ImmunizationCard(
                  //     'Two months completed',
                  //     'Pentavalent',
                  //     snapshot.data.pentDate1,
                  //     snapshot.data.pentEffects1,
                  //     snapshot.data.pentBatchNo1,
                  //     'OPV1',
                  //     snapshot.data.opvDate1,
                  //     snapshot.data.opvEffects1,
                  //     snapshot.data.opvBatchNo1,
                  //     2),
                  // ImmunizationCard(
                  //     'Four months completed',
                  //     'Pentavalent2',
                  //     snapshot.data.pentDate2,
                  //     snapshot.data.pentEffects2,
                  //     snapshot.data.pentBatchNo2,
                  //     'OPV2',
                  //     snapshot.data.opvDate2,
                  //     snapshot.data.opvEffects2,
                  //     snapshot.data.opvBatchNo2,
                  //     2),
                  // ImmunizationCard(
                  //     'Two months completed',
                  //     'Pentavalent3',
                  //     snapshot.data.pentDate3,
                  //     snapshot.data.pentEffects3,
                  //     snapshot.data.pentBatchNo3,
                  //     'OPV3',
                  //     snapshot.data.opvDate3,
                  //     snapshot.data.opvEffects3,
                  //     snapshot.data.opvBatchNo3,
                  //     2),
                  // ImmunizationCard.one(
                  //     'Nine month completed',
                  //     'Live JE',
                  //     snapshot.data.jeDate1,
                  //     snapshot.data.jeEffects1,
                  //     snapshot.data.jeBatchNo1,
                  //     1),
                  // ImmunizationCard.one(
                  //     'Twelve month completed',
                  //     'Measles and Rubella(MR)/MMR1',
                  //     snapshot.data.rubDate1,
                  //     snapshot.data.rubEffects1,
                  //     snapshot.data.rubBatchNo1,
                  //     1),
                  // ImmunizationCard(
                  //     'Eighteen months completed',
                  //     'DPT',
                  //     snapshot.data.dptDate1,
                  //     snapshot.data.dptEffects1,
                  //     snapshot.data.dptBatchNo1,
                  //     'OPV4',
                  //     snapshot.data.opvDate4,
                  //     snapshot.data.opvEffects4,
                  //     snapshot.data.opvBatchNo4,
                  //     2),
                  // ImmunizationCard.one(
                  //     'Three years completed',
                  //     'Measles and Rubella(MR)/MMR2',
                  //     snapshot.data.rubDate2,
                  //     snapshot.data.rubEffects2,
                  //     snapshot.data.rubBatchNo2,
                  //     1),
                  // ImmunizationCard(
                  //     'Five years completed',
                  //     'DT',
                  //     snapshot.data.dtDate1,
                  //     snapshot.data.dtEffects1,
                  //     snapshot.data.dtBatchNo1,
                  //     'OPV5',
                  //     snapshot.data.opvDate5,
                  //     snapshot.data.opvEffects5,
                  //     snapshot.data.opvBatchNo5,
                  //     2),
                  // ImmunizationCard.one(
                  //     'Twelve years completed',
                  //     'Adult tetanus and diphtheria',
                  //     snapshot.data.adultDipDate1,
                  //     snapshot.data.adultDipEffects1,
                  //     snapshot.data.adultDipBatchNo1,
                  //     1),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
