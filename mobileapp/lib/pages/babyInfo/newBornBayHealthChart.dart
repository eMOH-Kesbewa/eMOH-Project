import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/newBornHelth.dart';
import 'package:mobileapp/widgets/HelthCard.dart';
import 'package:mobileapp/widgets/growthCard.dart';

class HelthChart extends StatefulWidget {
  @override
  _HelthChartState createState() => _HelthChartState();
}

class _HelthChartState extends State<HelthChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Born Baby Helth Chart'),
        ),
        body: FutureBuilder<Baby>(
          future: fetchBaby(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }else{
              return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  HelthCard(
                      'Skin Colour',
                      snapshot.data.oneSkin,
                      snapshot.data.sixSkin,
                      snapshot.data.fourteenSkin,
                      snapshot.data.fourtyTwoSkin,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Eyes',
                      snapshot.data.oneEyes,
                      snapshot.data.sixEyes,
                      snapshot.data.fourteenEyes,
                      snapshot.data.fourtyTwoEyes,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Nature of Navel',
                      snapshot.data.oneLob,
                      snapshot.data.sixLob,
                      snapshot.data.fourteenLob,
                      snapshot.data.fourtyTwoLob,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Temperature',
                      snapshot.data.oneTemp,
                      snapshot.data.sixTemp,
                      snapshot.data.fourteenTemp,
                      snapshot.data.fourtyTwoTemp,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Only Breastfeeding',
                      snapshot.data.oneOnlyBreast,
                      snapshot.data.sixOnlyBreast,
                      snapshot.data.fourteenOnlyBreast,
                      snapshot.data.fourtyTwoOnlyBreast,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Breastfeeding Stability',
                      snapshot.data.oneBreastStab,
                      snapshot.data.sixBreastStab,
                      snapshot.data.fourteenBreastStab,
                      snapshot.data.fourtyTwoBreastStab,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Breastfeeding Connection',
                      snapshot.data.oneBreastCon,
                      snapshot.data.sixBreastCon,
                      snapshot.data.fourteenBreastStab,
                      snapshot.data.fourtyTwoBreastStab,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                  HelthCard(
                      'Others',
                      snapshot.data.oneOther,
                      snapshot.data.sixOther,
                      snapshot.data.fourteenOther,
                      snapshot.data.fourtyTwoTemp,snapshot.data.date1,snapshot.data.date2,snapshot.data.date3,snapshot.data.date4),
                ],
              ),
            );
            }
            
          },
        ));
  }
}
