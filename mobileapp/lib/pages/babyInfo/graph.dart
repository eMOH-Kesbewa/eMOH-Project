import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:mobileapp/services/babyService/chartService.dart';

class Chart extends StatefulWidget {
  final Widget child;

  Chart({Key key, this.child}) : super(key: key);

  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<charts.Series<Points,int>> _seriesLineData;
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
    _seriesLineData = List<charts.Series<Points, int>>();
    _asyncMethod();
  }

  _generateData() {
    logger.d('in genearate');

    logger.v(plot.length);
    _seriesLineData.add(
      charts.Series(
        //colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'plot',
        data: plot,
        domainFn: (Points sales, _) => sales.x,
        measureFn: (Points sales, _) => sales.y, //error
      ),
    );
    logger.d(_seriesLineData.length);
  }

  _asyncMethod() async {
    //Future<WeightHeight> wh = fetchWeightHeight();
    logger.d('in async method');
    fetchWeightHeight().then((it) {
      logger.w('inside then');
      logger.w(it);

      for (var i = 0; i < it.length; i++) {
        var p = 'p' + '${i}';
        logger.d(p);
        logger.d(it["${p}"]);
        double val = it["${p}"].toDouble();
        //double j = i.toDouble();

        plot.add(Points(i, val));
      }

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
    logger.wtf(_seriesLineData.length);

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
  var x;
  var y;
  Points(this.x, this.y);
}
