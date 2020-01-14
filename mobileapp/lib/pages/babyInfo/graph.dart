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

// void defineOptionsAndData() {
//   _lineChartOptions = new LineChartOptions();
//   _chartData = new ChartData();
//   _chartData.dataRowsLegends = ["Spring", "Summer", "Fall", "Winter"];
//   _chartData.dataRows = [
//     [1.0, 2.0, 3.0, 4.0, 6.0],
//     [4.0, 3.0, 5.0, 6.0, 1.0],
//   ];
//   _chartData.xLabels = ["One", "Two", "Three", "Four", "Five"];
//   _chartData.assignDataRowsDefaultColors();
//   // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
// }

class _ChartState extends State<Chart> {
  List<charts.Series<Points, double>> _seriesLineData;

  Future<Baby> plot = fetchBaby();

  // _generateData() {
  //   var linesalesdata = [
  //     new Points(0, 2, 0),
  //     new Points(1, 2.7, 0),
  //     new Points(2, 3.4, 0),
  //     new Points(3, 4, 0),
  //     new Points(4, 4.4, 0),
  //     new Points(5, 4.8, 0),
  //     new Points(6, 5.1, 0),
  //     new Points(7, 5.3, 0),
  //     new Points(8, 5.5, 0),
  //     new Points(9, 5.8, 0),
  //     new Points(10, 5.9, 0),
  //     new Points(11, 6.1, 0),
  //     new Points(12, 6.3, 0),
  //     new Points(13, 6.5, 0),
  //     new Points(14, 6.6, 0),
  //     new Points(15, 6.8, 0),
  //     new Points(16, 6.9, 0),
  //     new Points(17, 7.1, 0),
  //     new Points(18, 7.2, 0),
  //     new Points(19, 7.3, 0),
  //     new Points(20, 7.5, 0),
  //     new Points(21, 7.7, 0),
  //     new Points(22, 7.8, 0),
  //     new Points(23, 7.9, 0),
  //     new Points(24, 8, 0),
  //   ];
  //   var linesalesdata1 = [
  //     new Points(0, 2.4, 0),
  //     new Points(1, 3.1, 0),
  //     new Points(2, 4, 0),
  //     new Points(3, 4.4, 0),
  //     new Points(4, 5.3, 0),
  //     new Points(5, 5.7, 0),
  //     new Points(6, 5.7, 0),
  //     new Points(7, 5.9, 0),
  //     new Points(8, 6.2, 0),
  //     new Points(9, 6.4, 0),
  //     new Points(10, 6.6, 0),
  //     new Points(11, 6.8, 0),
  //     new Points(12, 7, 0),
  //     new Points(13, 7.2, 0),
  //     new Points(14, 7.3, 0),
  //     new Points(15, 7.5, 0),
  //     new Points(16, 7.7, 0),
  //     new Points(17, 7.8, 0),
  //     new Points(18, 8, 0),
  //     new Points(19, 8.2, 0),
  //     new Points(20, 8.3, 0),
  //     new Points(21, 8.5, 0),
  //     new Points(22, 8.7, 0),
  //     new Points(23, 8.9, 0),
  //     new Points(24, 9, 0),
  //   ];

  //   var linesalesdata2 = [
  //     new Points(0, 2.8, 0),
  //     new Points(1, 3.6, 0),
  //     new Points(2, 4.4, 0),
  //     new Points(3, 5.1, 0),
  //     new Points(4, 5.6, 0),
  //     new Points(5, 6, 0),
  //     new Points(6, 6.4, 0),
  //     new Points(7, 6.7, 0),
  //     new Points(8, 7, 0),
  //     new Points(9, 7.3, 0),
  //     new Points(10, 7.5, 0),
  //     new Points(11, 7.7, 0),
  //     new Points(12, 7.9, 0),
  //     new Points(13, 8.1, 0),
  //     new Points(14, 8.3, 0),
  //     new Points(15, 8.5, 0),
  //     new Points(16, 8.7, 0),
  //     new Points(17, 8.8, 0),
  //     new Points(18, 9, 0),
  //     new Points(19, 9.2, 0),
  //     new Points(20, 9.4, 0),
  //     new Points(21, 9.6, 0),
  //     new Points(22, 9.8, 0),
  //     new Points(23, 10, 0),
  //     new Points(24, 10.2, 0),
  //   ];

  //   var linesalesdata3 = [
  //     new Points(0, 4.2, 0),
  //     new Points(1, 5.4, 0),
  //     new Points(2, 6.5, 0),
  //     new Points(3, 7.5, 0),
  //     new Points(4, 8.2, 0),
  //     new Points(5, 8.8, 0),
  //     new Points(6, 9.3, 0),
  //     new Points(7, 9.8, 0),
  //     new Points(8, 10.2, 0),
  //     new Points(9, 10.5, 0),
  //     new Points(10, 10.9, 0),
  //     new Points(11, 11.2, 0),
  //     new Points(12, 11.5, 0),
  //     new Points(13, 11.8, 0),
  //     new Points(14, 12.1, 0),
  //     new Points(15, 12.4, 0),
  //     new Points(16, 12.6, 0),
  //     new Points(17, 12.9, 0),
  //     new Points(18, 13.2, 0),
  //     new Points(19, 13.4, 0),
  //     new Points(20, 13.7, 0),
  //     new Points(21, 14, 0),
  //     new Points(22, 14.3, 0),
  //     new Points(23, 14.6, 0),
  //     new Points(24, 14.8, 0),
  //   ];

  //   var linesalesdata4 = [
  //     new Points(0, 4.8, 0),
  //     new Points(1, 6.1, 0),
  //     new Points(2, 7.4, 0),
  //     new Points(3, 8.4, 0),
  //     new Points(4, 9.2, 0),
  //     new Points(5, 9.9, 0),
  //     new Points(6, 10.5, 0),
  //     new Points(7, 11, 0),
  //     new Points(8, 11.5, 0),
  //     new Points(9, 12, 0),
  //     new Points(10, 12.3, 0),
  //     new Points(11, 12.7, 0),
  //     new Points(12, 13.1, 0),
  //     new Points(13, 13.4, 0),
  //     new Points(14, 13.7, 0),
  //     new Points(15, 14.1, 0),
  //     new Points(16, 14.4, 0),
  //     new Points(17, 14.7, 0),
  //     new Points(18, 15.1, 0),
  //     new Points(19, 15.7, 0),
  //     new Points(20, 16, 0),
  //     new Points(21, 16.3, 0),
  //     new Points(22, 16.7, 0),
  //     new Points(23, 16.7, 0),
  //     new Points(24, 17, 0),
  //   ];

  //   _seriesLineData.add(
  //     charts.Series(
  //       colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
  //       id: 'CriticallylLowWeight',
  //       data: linesalesdata,
  //       domainFn: (Points sales, _) => sales.x,
  //       measureFn: (Points sales, _) => sales.y,
  //       strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
  //       areaColorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.lighter,
  //     ),
  //   );
  //   _seriesLineData.add(
  //     charts.Series(
  //       colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
  //       id: 'LowWeight',
  //       data: linesalesdata1,
  //       domainFn: (Points sales, _) => sales.x,
  //       measureFn: (Points sales, _) => sales.y,
  //       strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
  //       areaColorFn: (_, __) =>
  //           charts.MaterialPalette.yellow.shadeDefault.lighter,
  //     ),
  //   );
  //   _seriesLineData.add(
  //     charts.Series(
  //       colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
  //       id: 'RiskyWeight',
  //       data: linesalesdata2,
  //       domainFn: (Points sales, _) => sales.x,
  //       measureFn: (Points sales, _) => sales.y,
  //       strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
  //       areaColorFn: (_, __) =>
  //           charts.MaterialPalette.blue.shadeDefault.lighter,
  //     ),
  //   );
  //   _seriesLineData.add(
  //     charts.Series(
  //       colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
  //       id: 'NormalWeight',
  //       data: linesalesdata3,
  //       domainFn: (Points sales, _) => sales.x,
  //       measureFn: (Points sales, _) => sales.y,
  //       areaColorFn: (_, __) =>
  //           charts.MaterialPalette.green.shadeDefault.lighter,
  //       strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
  //     ),
  //   );
  //   _seriesLineData.add(
  //     charts.Series(
  //       colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
  //       id: 'ExtraWeight',
  //       data: linesalesdata4,
  //       domainFn: (Points sales, _) => sales.x,
  //       measureFn: (Points sales, _) => sales.y,
  //       strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
  //       areaColorFn: (_, __) =>
  //           charts.MaterialPalette.purple.shadeDefault.lighter,
  //     ),
  //   );
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<Points, double>>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Baby>(
        future: fetchBaby(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            var plot = [
              new Points(0, snapshot.data.x1.toDouble(), 2),
              new Points(1, snapshot.data.x2.toDouble(), 2),
              new Points(2, snapshot.data.x3.toDouble(), 2),
              new Points(3, snapshot.data.x4.toDouble(), 2),
              new Points(4, snapshot.data.x5.toDouble(), 2),
              new Points(5, snapshot.data.x6.toDouble(), 2),
              new Points(6, snapshot.data.x7.toDouble(), 2),
              new Points(7, snapshot.data.x8.toDouble(), 2),
              new Points(8, snapshot.data.x9.toDouble(), 2),
              new Points(9, snapshot.data.x10.toDouble(), 2),
              
            ];

            _seriesLineData.add(
              charts.Series(
                colorFn: (__, _) =>
                    charts.ColorUtil.fromDartColor(Color(0xffff9900)),
                id: 'plot',
                data: plot,
                domainFn: (Points sales, _) => sales.x,
                measureFn: (Points sales, _) => sales.y,
                strokeWidthPxFn: (Points sales, _) => sales.strokeWidthPx,
                areaColorFn: (_, __) =>
                    charts.MaterialPalette.purple.shadeDefault.lighter,
              ),
            );

            return Column(
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
            );
          }
        },
      ),
    );
  }
}

class Points {
  double x;
  double y;
  final double strokeWidthPx;
  Points(this.x, this.y, this.strokeWidthPx);
}
