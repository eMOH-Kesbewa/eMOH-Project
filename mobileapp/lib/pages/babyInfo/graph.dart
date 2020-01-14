import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobileapp/services/babyService/chartService.dart';

class Chart extends StatefulWidget {
  final Widget child;

  Chart({Key key, this.child}) : super(key: key);

  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  Future<WeightHeight> wh = fetchWeightHeight();
  List<charts.Series<Points, double>> _seriesLineData;

  //Future<WeightHeight> plot = fetchWeightHeight();

  static double first_yearone,
      first_yeartwo,
      first_yearthree,
      first_yearfour,
      first_yearfive,
      first_yearsix,
      first_yearseven,
      first_yeareight,
      first_yearnine,
      first_yearten,
      first_yeareleven,
      first_yeartwelve,
      sec_yearone,
      sec_yeartwo,
      sec_yearthree,
      sec_yearfour,
      sec_yearfive,
      sec_yearsix,
      sec_yearseven,
      sec_yeareight,
      sec_yearnine,
      sec_yearten,
      sec_yeareleven,
      sec_yeartwelve,
      third_yearone,
      third_yeartwo,
      third_yearthree,
      third_yearfour,
      third_yearfive,
      third_yearsix,
      third_yearseven,
      third_yeareight,
      third_yearnine,
      third_yearten,
      third_yeareleven,
      third_yeartwelve,
      four_yearone,
      four_yeartwo,
      four_yearthree,
      four_yearfour,
      four_yearfive,
      four_yearsix,
      four_yearseven,
      four_yeareight,
      four_yearnine,
      four_yearten,
      four_yeareleven,
      four_yeartwelve,
      five_yearone,
      five_yeartwo,
      five_yearthree,
      five_yearfour,
      five_yearfive,
      five_yearsix,
      five_yearseven,
      five_yeareight,
      five_yearnine,
      five_yearten,
      five_yeareleven,
      five_yeartwelve;

  @override
  void initState(){
    // TODO: implement initState

    wh.then((it) {
      first_yearone = it.first_yearone;
      first_yeartwo = it.first_yeartwo;
      first_yearthree = it.first_yearthree;
      first_yearfour = it.first_yearfour;
      first_yearfive = it.first_yearfive;
      first_yearsix = it.first_yearsix;
      first_yearseven = it.first_yearseven;
      first_yeareight = it.first_yeareight;
      first_yearnine = it.first_yearnine;
      first_yearten = it.first_yearten;
      first_yeareleven = it.first_yeareleven;
      first_yeartwelve = it.first_yeartwelve;

      sec_yearone = it.sec_yearone;
      sec_yeartwo = it.sec_yeartwo;
      sec_yearthree = it.sec_yearthree;
      sec_yearfour = it.sec_yearfour;
      sec_yearfive = it.sec_yearfive;
      sec_yearsix = it.sec_yearsix;
      sec_yearseven = it.sec_yearseven;
      sec_yeareight = it.sec_yeareight;
      sec_yearnine = it.sec_yearnine;
      sec_yearten = it.sec_yearten;
      sec_yeareleven = it.sec_yeareleven;
      sec_yeartwelve = it.sec_yeartwelve;

      third_yearone = it.third_yearone;
      third_yeartwo = it.third_yeartwo;
      third_yearthree = it.third_yearthree;
      third_yearfour = it.third_yearfour;
      third_yearfive = it.third_yearfive;
      third_yearsix = it.third_yearsix;
      third_yearseven = it.third_yearseven;
      third_yeareight = it.third_yeareight;
      third_yearnine = it.third_yearnine;
      third_yearten = it.third_yearten;
      third_yeareleven = it.third_yeareleven;
      third_yeartwelve = it.third_yeartwelve;

      four_yearone = it.four_yearone;
      four_yeartwo = it.four_yeartwo;
      four_yearthree = it.four_yearthree;
      four_yearfour = it.four_yearfour;
      four_yearfive = it.four_yearfive;
      four_yearsix = it.four_yearsix;
      four_yearseven = it.four_yearseven;
      four_yeareight = it.four_yeareight;
      four_yearnine = it.four_yearnine;
      four_yearten = it.four_yearten;
      four_yeareleven = it.four_yeareleven;
      four_yeartwelve = it.four_yeartwelve;

      five_yearone = it.five_yearone;
      five_yeartwo = it.five_yeartwo;
      five_yearthree = it.five_yearthree;
      five_yearfour = it.five_yearfour;
      five_yearfive = it.five_yearfive;
      five_yearsix = it.five_yearsix;
      five_yearseven = it.five_yearseven;
      five_yeareight = it.five_yeareight;
      five_yearnine = it.five_yearnine;
      five_yearten = it.five_yearten;
      five_yeareleven = it.five_yeareleven;
      five_yeartwelve = it.five_yeartwelve;
    });
    super.initState();
    _seriesLineData = List<charts.Series<Points, double>>();
  }

  _asyncMethod() async {
     _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account)     {
        setState(() {
          _currentUser = account;
        });
      });
      _googleSignIn.signInSilently();
    }

  // @override
  // void initState() {
  //   getDataFromFirestore();
  //   super.initState();

  //   });
  // }

  @override
  Widget build(BuildContext context) {
    logger.wtf(first_yearone);
    var plot = [
      new Points(0, first_yearone, 2),
      new Points(1, first_yeartwo, 2),
      new Points(2, first_yearthree, 2),
      new Points(3, first_yearfour, 2),
      new Points(4, first_yearfive, 2),
      new Points(5, first_yearsix, 2),
      new Points(6, first_yearseven, 2),
      new Points(7, first_yeareight, 2),
      new Points(8, first_yearnine, 2),
      new Points(9, first_yearten, 2),
      new Points(9, first_yeareleven, 2),
      new Points(9, first_yeartwelve, 2),
      new Points(0, sec_yearone, 2),
      new Points(1, sec_yeartwo, 2),
      new Points(2, sec_yearthree, 2),
      new Points(3, sec_yearfour, 2),
      new Points(4, sec_yearfive, 2),
      new Points(5, sec_yearsix, 2),
      new Points(6, sec_yearseven, 2),
      new Points(7, sec_yeareight, 2),
      new Points(8, sec_yearnine, 2),
      new Points(9, sec_yearten, 2),
      new Points(9, sec_yeareleven, 2),
      new Points(9, sec_yeartwelve, 2),
      new Points(0, third_yearone, 2),
      new Points(1, third_yeartwo, 2),
      new Points(2, third_yearthree, 2),
      new Points(3, third_yearfour, 2),
      new Points(4, third_yearfive, 2),
      new Points(5, third_yearsix, 2),
      new Points(6, third_yearseven, 2),
      new Points(7, third_yeareight, 2),
      new Points(8, third_yearnine, 2),
      new Points(9, third_yearten, 2),
      new Points(9, third_yeareleven, 2),
      new Points(9, third_yeartwelve, 2),
      new Points(0, four_yearone, 2),
      new Points(1, four_yeartwo, 2),
      new Points(2, four_yearthree, 2),
      new Points(3, four_yearfour, 2),
      new Points(4, four_yearfive, 2),
      new Points(5, four_yearsix, 2),
      new Points(6, four_yearseven, 2),
      new Points(7, four_yeareight, 2),
      new Points(8, four_yearnine, 2),
      new Points(9, four_yearten, 2),
      new Points(9, four_yeareleven, 2),
      new Points(9, four_yeartwelve, 2),
      new Points(0, five_yearone, 2),
      new Points(1, five_yeartwo, 2),
      new Points(2, five_yearthree, 2),
      new Points(3, five_yearfour, 2),
      new Points(4, five_yearfive, 2),
      new Points(5, five_yearsix, 2),
      new Points(6, five_yearseven, 2),
      new Points(7, five_yeareight, 2),
      new Points(8, five_yearnine, 2),
      new Points(9, five_yearten, 2),
      new Points(9, five_yeareleven, 2),
      new Points(9, five_yeartwelve, 2),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'plot',
        data: plot,
        domainFn: (Points sales, _) => sales.x,
        measureFn: (Points sales, _) => sales.y,
        strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
        areaColorFn: (_, __) =>
            charts.MaterialPalette.purple.shadeDefault.lighter,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Points for the first 5 years',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: charts.LineChart(_seriesLineData,
                defaultRenderer: new charts.LineRendererConfig(
                    includeLine: true, includeArea: false, stacked: false),
                animate: true,
                animationDuration: Duration(seconds: 5),
                // primaryMeasureAxis: new charts.NumericAxisSpec(
                //     renderSpec: new charts.NoneRenderSpec()),
//************************************************************************ */,

                // primaryMeasureAxis: new charts.NumericAxisSpec(
                //     tickProviderSpec: new charts
                //             .BasicNumericTickProviderSpec(
                //         // Make sure we don't have values less than 1 as ticks
                //         // (ie: counts).
                //         dataIsInWholeNumbers: true,
                //         // Fixed tick count to highlight the integer only behavior
                //         // generating ticks [0, 1, 2, 3, 4].
                //         desiredTickCount: 17)),
                behaviors: [
                  new charts.ChartTitle('Months',
                      behaviorPosition: charts.BehaviorPosition.bottom,
                      titleOutsideJustification:
                          charts.OutsideJustification.middleDrawArea),
                  new charts.ChartTitle('Weight',
                      behaviorPosition: charts.BehaviorPosition.start,
                      titleOutsideJustification:
                          charts.OutsideJustification.middleDrawArea),
                ]),
          ),
        ],
      ),
      // var plot = [
      //   new Points(0, first_yearone, 2),
      //   new Points(1, first_yeartwo, 2),
      //   new Points(2, first_yearthree, 2),
      //   new Points(3, first_yearfour, 2),
      //   new Points(4, first_yearfive, 2),
      //   new Points(5, first_yearsix, 2),
      //   new Points(6, first_yearseven, 2),
      //   new Points(7, first_yeareight, 2),
      //   new Points(8, first_yearnine, 2),
      //   new Points(9, first_yearten, 2),
      //   new Points(9, first_yeareleven, 2),
      //   new Points(9, first_yeartwelve, 2),
      //   new Points(0, sec_yearone, 2),
      //   new Points(1, sec_yeartwo, 2),
      //   new Points(2, sec_yearthree, 2),
      //   new Points(3, sec_yearfour, 2),
      //   new Points(4, sec_yearfive, 2),
      //   new Points(5, sec_yearsix, 2),
      //   new Points(6, sec_yearseven, 2),
      //   new Points(7, sec_yeareight, 2),
      //   new Points(8, sec_yearnine, 2),
      //   new Points(9, sec_yearten, 2),
      //   new Points(9, sec_yeareleven, 2),
      //   new Points(9, sec_yeartwelve, 2),
      //   new Points(0, third_yearone, 2),
      //   new Points(1, third_yeartwo, 2),
      //   new Points(2, third_yearthree, 2),
      //   new Points(3, third_yearfour, 2),
      //   new Points(4, third_yearfive, 2),
      //   new Points(5, third_yearsix, 2),
      //   new Points(6, third_yearseven, 2),
      //   new Points(7, third_yeareight, 2),
      //   new Points(8, third_yearnine, 2),
      //   new Points(9, third_yearten, 2),
      //   new Points(9, third_yeareleven, 2),
      //   new Points(9, third_yeartwelve, 2),
      //   new Points(0, four_yearone, 2),
      //   new Points(1, four_yeartwo, 2),
      //   new Points(2, four_yearthree, 2),
      //   new Points(3, four_yearfour, 2),
      //   new Points(4, four_yearfive, 2),
      //   new Points(5, four_yearsix, 2),
      //   new Points(6, four_yearseven, 2),
      //   new Points(7, four_yeareight, 2),
      //   new Points(8, four_yearnine, 2),
      //   new Points(9, four_yearten, 2),
      //   new Points(9, four_yeareleven, 2),
      //   new Points(9, four_yeartwelve, 2),
      //   new Points(0, five_yearone, 2),
      //   new Points(1, five_yeartwo, 2),
      //   new Points(2, five_yearthree, 2),
      //   new Points(3, five_yearfour, 2),
      //   new Points(4, five_yearfive, 2),
      //   new Points(5, five_yearsix, 2),
      //   new Points(6, five_yearseven, 2),
      //   new Points(7, five_yeareight, 2),
      //   new Points(8, five_yearnine, 2),
      //   new Points(9, five_yearten, 2),
      //   new Points(9, five_yeareleven, 2),
      //   new Points(9, five_yeartwelve, 2),
      // ];

      // _seriesLineData.add(
      //   charts.Series(
      //     colorFn: (__, _) =>
      //         charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      //     id: 'plot',
      //     data: plot,
      //     domainFn: (Points sales, _) => sales.x,
      //     measureFn: (Points sales, _) => sales.y,
      //     strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
      //     areaColorFn: (_, __) =>
      //         charts.MaterialPalette.purple.shadeDefault.lighter,
      //   ),
      // );

//             return Column(
//               children: [
//                 Text(
//                   'Points for the first 5 years',
//                   style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//                 ),
//                 Expanded(
//                   child: charts.LineChart(_seriesLineData,
//                       defaultRenderer: new charts.LineRendererConfig(
//                           includeLine: true,
//                           includeArea: false,
//                           stacked: false),
//                       animate: true,
//                       animationDuration: Duration(seconds: 5),
//                       // primaryMeasureAxis: new charts.NumericAxisSpec(
//                       //     renderSpec: new charts.NoneRenderSpec()),
// //************************************************************************ */,

//                       // primaryMeasureAxis: new charts.NumericAxisSpec(
//                       //     tickProviderSpec: new charts
//                       //             .BasicNumericTickProviderSpec(
//                       //         // Make sure we don't have values less than 1 as ticks
//                       //         // (ie: counts).
//                       //         dataIsInWholeNumbers: true,
//                       //         // Fixed tick count to highlight the integer only behavior
//                       //         // generating ticks [0, 1, 2, 3, 4].
//                       //         desiredTickCount: 17)),
//                       behaviors: [
//                         new charts.ChartTitle('Months',
//                             behaviorPosition: charts.BehaviorPosition.bottom,
//                             titleOutsideJustification:
//                                 charts.OutsideJustification.middleDrawArea),
//                         new charts.ChartTitle('Weight',
//                             behaviorPosition: charts.BehaviorPosition.start,
//                             titleOutsideJustification:
//                                 charts.OutsideJustification.middleDrawArea),
//                       ]),
//                 ),
//               ],
//             );
    );
  }
}

class Points {
  double x;
  double y;
  final double strokeWidthPx;
  Points(this.x, this.y, this.strokeWidthPx);
}
