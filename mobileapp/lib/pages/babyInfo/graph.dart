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
    List<charts.Series<Points, double>> _seriesLineData;
  // Future<WeightHeight> wh = fetchWeightHeight();
 // List _seriesLineData;
 
    //List<charts.Series<Sales, int>> _seriesLineData;

  //Future<WeightHeight> plot = fetchWeightHeight();

  List<Points> plot = List();

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
  void initState() {
    super.initState();
     _seriesLineData = List<charts.Series<Points, double>>();
    _asyncMethod();
  }

  _generateData() {
    logger.d('in genearate');
    logger.w(first_yearone);
    plot = [
      new Points(0, first_yearone),
      new Points(1, first_yeartwo),
      new Points(2, first_yearthree),
      new Points(3, first_yearfour),
      new Points(4, first_yearfive),
      new Points(5, first_yearsix),
      new Points(6, first_yearseven),
      new Points(7, first_yeareight),
      new Points(8, first_yearnine),
      new Points(9, first_yearten),
      new Points(10, first_yeareleven),
      new Points(11, first_yeartwelve),
      new Points(12, sec_yearone),
      new Points(13, sec_yeartwo),
      new Points(14, sec_yearthree),
      new Points(15, sec_yearfour),
      new Points(16, sec_yearfive),
      new Points(17, sec_yearsix),
      new Points(18, sec_yearseven),
      new Points(19, sec_yeareight),
      new Points(20, sec_yearnine),
      new Points(21, sec_yearten),
      new Points(22, sec_yeareleven),
      new Points(23, sec_yeartwelve),
      new Points(24, third_yearone),
      new Points(25, third_yeartwo),
      new Points(26, third_yearthree),
      new Points(27, third_yearfour),
      new Points(28, third_yearfive),
      new Points(29, third_yearsix),
      new Points(30, third_yearseven),
      new Points(31, third_yeareight),
      new Points(32, third_yearnine),
      new Points(33, third_yearten),
      new Points(34, third_yeareleven),
      new Points(35, third_yeartwelve),
      new Points(36, four_yearone),
      new Points(37, four_yeartwo),
      new Points(38, four_yearthree),
      new Points(39, four_yearfour),
      new Points(40, four_yearfive),
      new Points(41, four_yearsix),
      new Points(42, four_yearseven),
      new Points(43, four_yeareight),
      new Points(44, four_yearnine),
      new Points(45, four_yearten),
      new Points(46, four_yeareleven),
      new Points(47, four_yeartwelve),
      new Points(48, five_yearone),
      new Points(49, five_yeartwo),
      new Points(50, five_yearthree),
      new Points(51, five_yearfour),
      new Points(52, five_yearfive),
      new Points(53, five_yearsix),
      new Points(54, five_yearseven),
      new Points(55, five_yeareight),
      new Points(56, five_yearnine),
      new Points(57, five_yearten),
      new Points(58, five_yeareleven),
      new Points(59, five_yeartwelve),
    ];

    logger.v(plot.length);
    _seriesLineData.add(
      charts.Series(
        //colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'plot',
        data: plot,
        domainFn: (Points sales, _) => sales.x,
        measureFn: (Points sales, _) => sales.y,
      ),

    );

    //  _seriesLineData.add(
    //   charts.Series(
    //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
    //     id: 'Air Pollution',
    //     data: linesalesdata1,
    //     domainFn: (Sales sales, _) => sales.yearval,
    //     measureFn: (Sales sales, _) => sales.salesval,
    //   ),
    // );
  }

  _asyncMethod() async {
    //Future<WeightHeight> wh = fetchWeightHeight();
    logger.d('in async method');
    fetchWeightHeight().then((it) {
      logger.w('inside then');
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
      setState(() {
        logger.i('in setstate');
        _generateData();
      });
    }).catchError((e) {
      logger.e(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.wtf(first_yearone);

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
    );
  }
}

class Points {
  double x;
  double y;
  Points(this.x, this.y);
}
