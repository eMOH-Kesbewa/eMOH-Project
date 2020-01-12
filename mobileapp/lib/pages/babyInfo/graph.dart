// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:logger/logger.dart';
// import 'package:mobileapp/services/babyService/chartService.dart';
// import 'package:mobileapp/services/familyProflieServices.dart';

// class Chart extends StatefulWidget {
// //  final Widget child;

//   Chart(
//       {Key key,
//       this.x1,
//       this.y1,
//       this.x2,
//       this.y2,
//       this.x3,
//       this.y3,
//       this.x4,
//       this.y4,
//       this.x5,
//       this.y5,
//       this.x6,
//       this.y6,
//       this.x7,
//       this.y7,
//       this.x8,
//       this.y8,
//       this.x9,
//       this.y9,
//       this.x10,
//       this.y10})
//       : super(key: key);

//   double x1;
//   double y1;
//   double x2;
//   double y2;
//   double x3;
//   double y3;
//   double x4;
//   double y4;
//   double x5;
//   double y5;
//   double x6;
//   double y6;
//   double x7;
//   double y7;
//   double x8;
//   double y8;
//   double x9;
//   double y9;
//   double x10;
//   double y10;
//   @override
//   _ChartState createState() => _ChartState();
// }

// var logger = Logger();

// class _ChartState extends State<Chart> {
//   List<charts.Series<Sales, double>> _seriesLineData;
//   var dataChart = List<Sales>();
//   _generateData() {
//     // var linesalesdata = [
//     //   new Sales(0, 10),
//     //   new Sales(1, 56),
//     //   new Sales(2, 55),
//     //   new Sales(3, 60),
//     //   new Sales(4, 61),
//     //   new Sales(5, 70),
//     // ];

//     //  logger.wtf(widget.x1);
//     var linesalesdata1 = [
//       Sales(0, 2, null, 0.0),
//       Sales(1, 2.7, null, 0.0),
//       Sales(2, 3.4, null, 0.0),
//       Sales(3, 4, null, 0.0),
//       Sales(4, 4.4, null, 0.0),
//       Sales(5, 4.8, null, 0.0),
//       Sales(6, 5.1, null, 0.0),
//       Sales(7, 5.3, null, 0.0),
//       Sales(8, 5.5, null, 0.0),
//       Sales(9, 5.7, null, 0.0),
//       Sales(10, 5.9, null, 0.0),
//       Sales(11, 6.1, null, 0.0),
//       Sales(12, 6.3, null, 0.0),
//       Sales(13, 6.5, null, 0.0),
//       Sales(14, 6.6, null, 0.0),
//       Sales(15, 6.8, null, 0.0),
//       Sales(16, 6.9, null, 0.0),
//       Sales(17, 7.1, null, 0.0),
//       Sales(18, 7.2, null, 0.0),
//       Sales(19, 7.35, null, 0.0),
//       Sales(20, 7.5, null, 0.0),
//       Sales(21, 7.65, null, 0.0),
//       Sales(22, 7.8, null, 0.0),
//       Sales(23, 7.9, null, 0.0),
//       Sales(24, 8.05, null, 0.0),
//     ]; //4is missing

//     var linesalesdata2 = [
//       Sales(0, 2.4, null, 0.0),
//       Sales(1, 3.1, null, 0.0),
//       Sales(2, 4, null, 0.0),
//       Sales(3, 4.5, null, 0.0),
//       Sales(4, 5, null, 0.0),
//       Sales(5, 5.3, null, 0.0),
//       Sales(6, 5.7, null, 0.0),
//       Sales(7, 5.95, null, 0.0),
//       Sales(8, 6.2, null, 0.0),
//       Sales(9, 6.4, null, 0.0),
//       Sales(10, 6.6, null, 0.0),
//       Sales(11, 6.8, null, 0.0),
//       Sales(12, 7, null, 0.0),
//       Sales(13, 7.15, null, 0.0),
//       Sales(14, 7.3, null, 0.0),
//       Sales(15, 7.5, null, 0.0),
//       Sales(16, 7.65, null, 0.0),
//       Sales(17, 7.8, null, 0.0),
//       Sales(18, 8, null, 0.0),
//       Sales(19, 8.2, null, 0.0),
//       Sales(20, 8.35, null, 0.0),
//       Sales(21, 8.5, null, 0.0),
//       Sales(22, 8.22, null, 0.0),
//       Sales(23, 8.9, null, 0.0),
//       Sales(24, 9, null, 0.0),
//     ];
//     var linesalesdata3 = [
//       Sales(0, 2.8, null, 0.0),
//       Sales(1, 3.6, null, 0.0),
//       Sales(2, 4.4, null, 0.0),
//       Sales(3, 5.1, null, 0.0),
//       Sales(4, 5.6, null, 0.0),
//       Sales(5, 6, null, 0.0),
//       Sales(6, 6.4, null, 0.0),
//       Sales(7, 6.7, null, 0.0),
//       Sales(8, 7, null, 0.0),
//       Sales(9, 7.25, null, 0.0),
//       Sales(10, 7.5, null, 0.0),
//       Sales(11, 7.7, null, 0.0),
//       Sales(12, 7.9, null, 0.0),
//       Sales(13, 8.1, null, 0.0),
//       Sales(14, 8.3, null, 0.0),
//       Sales(15, 8.5, null, 0.0),
//       Sales(16, 8.65, null, 0.0),
//       Sales(17, 8.8, null, 0.0),
//       Sales(18, 9, null, 0.0),
//       Sales(19, 9.2, null, 0.0),
//       Sales(20, 9.4, null, 0.0),
//       Sales(21, 9.6, null, 0.0),
//       Sales(22, 9.8, null, 0.0),
//       Sales(23, 9.95, null, 0.0),
//       Sales(24, 10.15, null, 0.0),
//     ];
//     var linesalesdata4 = [
//       Sales(0, 3.2, null, 0.0),
//       Sales(1, 4.1, null, 0.0),
//       Sales(2, 5.1, null, 0.0),
//       Sales(3, 5.8, null, 0.0),
//       Sales(4, 6.4, null, 0.0),
//       Sales(5, 6.85, null, 0.0),
//       Sales(6, 7.3, null, 0.0),
//       Sales(7, 7.65, null, 0.0),
//       Sales(8, 7.9, null, 0.0),
//       Sales(9, 8.2, null, 0.0),
//       Sales(10, 8.5, null, 0.0),
//       Sales(11, 8.7, null, 0.0),
//       Sales(12, 8.95, null, 0.0),
//       Sales(13, 9.15, null, 0.0),
//       Sales(14, 9.4, null, 0.0),
//       Sales(15, 9.6, null, 0.0),
//       Sales(16, 9.8, null, 0.0),
//       Sales(17, 10, null, 0.0),
//       Sales(18, 10.2, null, 0.0),
//       Sales(19, 10.4, null, 0.0),
//       Sales(20, 10.6, null, 0.0),
//       Sales(21, 10.85, null, 0.0),
//       Sales(22, 11.05, null, 0.0),
//       Sales(23, 11.25, null, 0.0),
//       Sales(24, 11.5, null, 0.0),
//     ];
//     var linesalesdata5 = [
//       Sales(0, 3.7, null, 0.0),
//       Sales(1, 4.7, null, 0.0),
//       Sales(2, 5.7, null, 0.0),
//       Sales(3, 6.55, null, 0.0),
//       Sales(4, 7.2, null, 0.0),
//       Sales(5, 7.7, null, 0.0),
//       Sales(6, 8.2, null, 0.0),
//       Sales(7, 8.6, null, 0.0),
//       Sales(8, 8.9, null, 0.0),
//       Sales(9, 9.25, null, 0.0),
//       Sales(10, 9.55, null, 0.0),
//       Sales(11, 9.8, null, 0.0),
//       Sales(12, 10.1, null, 0.0),
//       Sales(13, 10.3, null, 0.0),
//       Sales(14, 10.6, null, 0.0),
//       Sales(15, 10.8, null, 0.0),
//       Sales(16, 11.05, null, 0.0),
//       Sales(17, 11.3, null, 0.0),
//       Sales(18, 11.55, null, 0.0),
//       Sales(19, 11.8, null, 0.0),
//       Sales(20, 12.1, null, 0.0),
//       Sales(21, 12.3, null, 0.0),
//       Sales(22, 12.6, null, 0.0),
//       Sales(23, 12.8, null, 0.0),
//       Sales(24, 13, null, 0.0),
//     ];
//     var linesalesdata6 = [
//       Sales(0, 4.2, null, 0.0),
//       Sales(1, 5.4, null, 0.0),
//       Sales(2, 6.55, null, 0.0),
//       Sales(3, 7.45, null, 0.0),
//       Sales(4, 8.2, null, 0.0),
//       Sales(5, 8.8, null, 0.0),
//       Sales(6, 9.3, null, 0.0),
//       Sales(7, 9.75, null, 0.0),
//       Sales(8, 10.15, null, 0.0),
//       Sales(9, 10.5, null, 0.0),
//       Sales(10, 10.9, null, 0.0),
//       Sales(11, 11.2, null, 0.0),
//       Sales(12, 11.5, null, 0.0),
//       Sales(13, 11.8, null, 0.0),
//       Sales(14, 12.05, null, 0.0),
//       Sales(15, 12.45, null, 0.0),
//       Sales(16, 12.55, null, 0.0),
//       Sales(17, 12.9, null, 0.0),
//       Sales(18, 13.2, null, 0.0),
//       Sales(19, 13.45, null, 0.0),
//       Sales(20, 13.7, null, 0.0),
//       Sales(21, 14, null, 0.0),
//       Sales(22, 14.3, null, 0.0),
//       Sales(23, 14.6, null, 0.0),
//       Sales(24, 14.9, null, 0.0),
//     ];
//     var linesalesdata7 = [
//       Sales(0, 4.8, null, 0.0),
//       Sales(1, 6.1, null, 0.0),
//       Sales(2, 7.4, null, 0.0),
//       Sales(3, 8.4, null, 0.0),
//       Sales(4, 9.25, null, 0.0),
//       Sales(5, 9.9, null, 0.0),
//       Sales(6, 10.5, null, 0.0),
//       Sales(7, 11, null, 0.0),
//       Sales(8, 11.5, null, 0.0),
//       Sales(9, 12, null, 0.0),
//       Sales(10, 12.3, null, 0.0),
//       Sales(11, 12.7, null, 0.0),
//       Sales(12, 13.1, null, 0.0),
//       Sales(13, 13.4, null, 0.0),
//       Sales(14, 13.7, null, 0.0),
//       Sales(15, 14.1, null, 0.0),
//       Sales(16, 14.4, null, 0.0),
//       Sales(17, 14.7, null, 0.0),
//       Sales(18, 15.1, null, 0.0),
//       Sales(19, 15.4, null, 0.0),
//       Sales(20, 15.7, null, 0.0),
//       Sales(21, 16, null, 0.0),
//       Sales(22, 16.4, null, 0.0),
//       Sales(23, 16.7, null, 0.0),
//       Sales(24, 17, null, 0.0),
//     ];

//     // double x1 = widget.x1;
//     // double y1 = widget.y1;

//     // double x2;
//     // double y2;
//     // double x3;
//     // double y3;
//     // double x4;
//     // double y4;
//     // double x5;
//     // double y5;
//     // double x6;
//     // double y6;
//     // double x7;
//     // double y7;
//     // double x8;
//     // double y8;
//     // double x9;
//     // double y9;
//     // double x10;
//     // double y10;
//     FutureBuilder<Baby>(
//       future: fetchBaby(),
//       builder: (context, snapshot) {
//         logger.i(snapshot.data.x10);
//         dataChart = [
//           //Sales(24, 17, null, 0.0),`

//           Sales(snapshot.data.x1, snapshot.data.y1, null, 0.0),
//           Sales(snapshot.data.x2, snapshot.data.y2, null, 0.0),
//           Sales(snapshot.data.x3, snapshot.data.y3, null, 0.0),
//           Sales(snapshot.data.x4, snapshot.data.y4, null, 0.0),
//           Sales(snapshot.data.x5, snapshot.data.y5, null, 0.0),
//           Sales(snapshot.data.x6, snapshot.data.y6, null, 0.0),
//           Sales(snapshot.data.x7, snapshot.data.y7, null, 0.0),
//           Sales(snapshot.data.x8, snapshot.data.y8, null, 0.0),
//           Sales(snapshot.data.x9, snapshot.data.y9, null, 0.0),
//           Sales(snapshot.data.x10, snapshot.data.y10, null, 0.0),
//         ];
//       },
//     );

//     // var dataChart = [
//     //   //Sales(24, 17, null, 0.0),
//     //   Sales(widget.x1, widget.y1, null, 0.0),
//     //   Sales(widget.x2, widget.y2, null, 0.0),
//     //   Sales(widget.x3, widget.y3, null, 0.0),
//     //   Sales(widget.x4, widget.y4, null, 0.0),
//     //   Sales(widget.x5, widget.y5, null, 0.0),
//     //   Sales(widget.x6, widget.y6, null, 0.0),
//     //   Sales(widget.x7, widget.y7, null, 0.0),
//     //   Sales(widget.x8, widget.y8, null, 0.0),
//     //   Sales(widget.x9, widget.y9, null, 0.0),
//     //   Sales(widget.x10, widget.y10, null, 0.0),
//     // ];

//     // var linesalesdata2 = [
//     //   Sales(0, 20),
//     //   Sales(1, 24),
//     //   Sales(2, 25),
//     //   Sales(3, 40),
//     //   Sales(4, 45),
//     //   Sales(5, 60),
//     // ];

//     // _seriesLineData.add(
//     //   charts.Series(
//     //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
//     //     id: 'Air Pollution',
//     //     data: linesalesdata,
//     //     domainFn: (Sales sales, _) => sales.yearval,
//     //     measureFn: (Sales sales, _) => sales.salesval,
//     //   ),
//     // );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata1,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.deepOrange.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata2,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.purple.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata3,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.yellow.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata4,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.pink.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata5,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.green.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata6,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.green.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );
//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: linesalesdata7,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.blue.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );

//     _seriesLineData.add(
//       charts.Series(
//         // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//         id: 'A',
//         data: dataChart,
//         //colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
//         strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,

//         areaColorFn: (_, __) =>
//             charts.MaterialPalette.blue.shadeDefault.lighter,

//         domainFn: (Sales sales, _) => sales.yearval,
//         measureFn: (Sales sales, _) => sales.salesval,
//       ),
//     );

//     // _seriesLineData.add(charts.Series(
//     //   id: 'Sales',
//     //   colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//     //   strokeWidthPxFn: (Sales sales, _) => sales.strokeWidthPx,
//     //   domainFn: (Sales sales, _) => sales.yearval,
//     //   measureFn: (Sales sales, _) => sales.salesval,
//     //   data: data,
//     // ));

//     // _seriesLineData.add(
//     //   charts.Series(
//     //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
//     //     id: 'Air Pollution',
//     //     data: linesalesdata2,
//     //     domainFn: (Sales sales, _) => sales.yearval,
//     //     measureFn: (Sales sales, _) => sales.salesval,
//     //   ),
//     // );
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _seriesLineData = List<charts.Series<Sales, double>>();
//     Future baby = fetchBaby();
//     _generateData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chart'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(0.0),
//         child: Column(
//           children: <Widget>[
//             // Text(
//             //   'Sales for the first 5 years',
//             //   style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             // ),
//             Expanded(
//               child: charts.LineChart(_seriesLineData,
//                   layoutConfig: charts.LayoutConfig(
//                       rightMarginSpec: charts.MarginSpec.fixedPixel(10),
//                       leftMarginSpec: charts.MarginSpec.fixedPixel(0),
//                       topMarginSpec: charts.MarginSpec.fixedPixel(0),
//                       bottomMarginSpec: charts.MarginSpec.fixedPixel(0)),
//                   defaultRenderer: new charts.LineRendererConfig(
//                       includeArea: true, stacked: true),
//                   animate: false,
//                   animationDuration: Duration(seconds: 1),
//                   behaviors: [
//                     new charts.SeriesLegend(
//                       // Positions for "start" and "end" will be left and right respectively
//                       // for widgets with a build context that has directionality ltr.
//                       // For rtl, "start" and "end" will be right and left respectively.
//                       // Since this example has directionality of ltr, the legend is
//                       // positioned on the right side of the chart.
//                       position: charts.BehaviorPosition.inside,
//                       // By default, if the position of the chart is on the left or right of
//                       // the chart, [horizontalFirst] is set to false. This means that the
//                       // legend entries will grow as new rows first instead of a new column.
//                       horizontalFirst: false,
//                       // This defines the padding around each legend entry.
//                       cellPadding: new EdgeInsets.only(right: 0.5, bottom: 0.5),
//                       // Set show measures to true to display measures in series legend,
//                       // when the datum is selected.
//                       showMeasures: true,
//                       // Optionally provide a measure formatter to format the measure value.
//                       // If none is specified the value is formatted as a decimal.
//                       measureFormatter: (num value) {
//                         return value == null ? '-' : '${value}k';
//                       },
//                     ),
//                     charts.PanAndZoomBehavior(),
//                     charts.SeriesLegend(),
//                     new charts.ChartTitle(
//                       'Months',
//                       behaviorPosition: charts.BehaviorPosition.bottom,
//                       titleOutsideJustification:
//                           charts.OutsideJustification.middleDrawArea,
//                     ),
//                     new charts.ChartTitle('Weight',
//                         behaviorPosition: charts.BehaviorPosition.start,
//                         titleOutsideJustification:
//                             charts.OutsideJustification.middleDrawArea),
//                     // new charts.ChartTitle(
//                     //   'Departments',
//                     //   behaviorPosition: charts.BehaviorPosition.end,
//                     //   titleOutsideJustification:
//                     //       charts.OutsideJustification.middleDrawArea,
//                     // )
//                   ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Pollution {
//   String place;
//   double year;
//   double quantity;

//   Pollution(this.year, this.place, this.quantity);
// }

// class Sales {
//   double yearval;
//   double salesval;
//   final double strokeWidthPx;
//   final List<double> dashPattern;

//   Sales(this.yearval, this.salesval, this.dashPattern, this.strokeWidthPx);
// }
