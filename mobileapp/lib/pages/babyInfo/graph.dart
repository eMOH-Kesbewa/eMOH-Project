import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Chart extends StatefulWidget {
  final Widget child;

  Chart({Key key, this.child}) : super(key: key);
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'USA', 30),
      new Pollution(1980, 'Asia', 40),
      new Pollution(1980, 'Europe', 10),
    ];
    var data2 = [
      new Pollution(1985, 'USA', 100),
      new Pollution(1980, 'Asia', 150),
      new Pollution(1985, 'Europe', 80),
    ];
    var data3 = [
      new Pollution(1985, 'USA', 200),
      new Pollution(1980, 'Asia', 300),
      new Pollution(1985, 'Europe', 180),
    ];

    // var linesalesdata = [
    //   new Sales(0, 10),
    //   new Sales(1, 56),
    //   new Sales(2, 55),
    //   new Sales(3, 60),
    //   new Sales(4, 61),
    //   new Sales(5, 70),
    // ];
    var linesalesdata1 = [
      // Sales(0, 90, 5.0),
      // Sales(5, 50, 1.0),
      // Sales(1, 46, 1.0),
      // Sales(2, 45, 1.0),
      // Sales(3, 50, 0.0),
      // Sales(4, 51, 10.0),
      // Sales(5, 60, 1.0),
      new Sales(0, 5, null, 0.0),
      new Sales(1, 15, null, 0.0),
      new Sales(2, 25, null, 0.0),
      new Sales(3, 75, null, 0.0),
      new Sales(4, 100, null, 0.0),
      new Sales(5, 90, null, 0.0),
      new Sales(6, 75, null, 0.0),
    ];

    // var linesalesdata2 = [
    //   Sales(0, 20),
    //   Sales(1, 24),
    //   Sales(2, 25),
    //   Sales(3, 40),
    //   Sales(4, 45),
    //   Sales(5, 60),
    // ];

    // _seriesLineData.add(
    //   charts.Series(
    //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
    //     id: 'Air Pollution',
    //     data: linesalesdata,
    //     domainFn: (Sales sales, _) => sales.yearval,
    //     measureFn: (Sales sales, _) => sales.salesval,
    //   ),
    // );
    _seriesLineData.add(
      charts.Series(
       // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
       // colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

        areaColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
        
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    // _seriesLineData.add(
    //   charts.Series(
    //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
    //     id: 'Air Pollution',
    //     data: linesalesdata2,
    //     domainFn: (Sales sales, _) => sales.yearval,
    //     measureFn: (Sales sales, _) => sales.salesval,
    //   ),
    // );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              'Sales for the first 5 years',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: charts.LineChart(_seriesLineData,
                  defaultRenderer: new charts.LineRendererConfig(
                      includeArea: true, stacked: true),
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  behaviors: [
                    new charts.ChartTitle(
                      'Years',
                      behaviorPosition: charts.BehaviorPosition.bottom,
                      titleOutsideJustification:
                          charts.OutsideJustification.middleDrawArea,
                    ),
                    new charts.ChartTitle('Sales',
                        behaviorPosition: charts.BehaviorPosition.start,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                    // new charts.ChartTitle(
                    //   'Departments',
                    //   behaviorPosition: charts.BehaviorPosition.end,
                    //   titleOutsideJustification:
                    //       charts.OutsideJustification.middleDrawArea,
                    // )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Sales {
  int yearval;
  int salesval;
  final double strokeWidthPx;
  final List<int> dashPattern;

  Sales(this.yearval, this.salesval,this.dashPattern, this.strokeWidthPx);
}


