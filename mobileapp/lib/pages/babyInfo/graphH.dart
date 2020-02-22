/**
 * Height graph of baby
 */
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:mobileapp/services/babyService/graphHService.dart';

class GraphH extends StatefulWidget {
  final Widget child;

  GraphH({Key key, this.child}) : super(key: key);

  _GraphHState createState() => _GraphHState();
}

class _GraphHState extends State<GraphH> {
  List<charts.Series<Points, int>> _seriesLineData;

  List<Points> plot = List();

  var endVal, month; //ending value, month
  var message;  //warning message
  Color col = Colors.white;

  //to display warnings.

  @override
  void initState() {
    super.initState();
    _seriesLineData = List<charts.Series<Points, int>>();
    _asyncMethod();
  }

  _generateData() {
    _seriesLineData.add(
      charts.Series(
        //colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'plot',
        data: plot,
        domainFn: (Points sales, _) => sales.x,
        measureFn: (Points sales, _) => sales.y, //error
      ),
    );
  }

  _asyncMethod() async {
        //this function includes in graphHService.dart
    fetchWeightHeight().then((it) {
      logger.v(it["p1"]);
      for (var i = 0; i < it.length; i++) {
        var p = 'p' + '${i}';

        double val = it["${p}"].toDouble();

        var x = i / 5;
        month = x.round();

        plot.add(Points(i, val));
      }

      setState(() {
        _generateData();
        endVal = plot.length;
      });
    }).catchError((e) {
      logger.e(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    //warnings for month 1
    if (month == 1) {
      //2.7,3.13.6,5.4
      if (endVal < 2.7) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 3.1) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 3.6) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 5.4) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }

    //warnings for month 2

    if (month == 2) {
      //3.4,3.9,4.4,6.6
      if (endVal < 3.4) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 3.9) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 4.4) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 6.6) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 3
    if (month == 3) {
      //4,4.5,5.1,7.5
      if (endVal < 4) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 4.5) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 5.1) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 7.5) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 4
    if (month == 4) {
      //4.4,5,5.6,8.2
      if (endVal < 4.4) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 5) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 5.6) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 8.2) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 5
    if (month == 5) {
      //4.8,5.3,6,8.8
      if (endVal < 4.8) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 5.3) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 6) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 8.8) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 6
    if (month == 6) {
      //5.1,5.7,6.4,9.3
      if (endVal < 5.1) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 5.7) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 6.4) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 9.3) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 7
    if (month == 7) {
      //5.3,6,6.7,9.8
      if (endVal < 5.3) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 6) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 6.7) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 9.8) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 8
    if (month == 8) {
      // 5.5,6.2,7,10.2
      if (endVal < 5.5) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 6.2) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 7) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 10.2) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 9
    if (month == 9) {
      //5.8,6.4,7.2,10.5
      if (endVal < 5.8) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 6.4) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 7.2) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 10.5) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 10
    if (month == 10) {
      //6,6.6,7.5,10.9
      if (endVal < 6) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 6.6) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 7.5) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 10.9) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 11
    if (month == 11) {
      //6.1,6.8,7.7,11.2
      if (endVal < 6.1) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 6.8) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 7.7) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 11.2) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 12
    if (month == 12) {
      //6.3,7,8,11.5
      if (endVal < 6.3) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 8) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 11.5) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }

    //warnings for month 13

    if (month == 13) {
      //6.5,7.2,8.1,11.8
      if (endVal < 6.5) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7.2) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.1) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 11.8) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 14
    if (month == 14) {
      //6.6,7.3,8.3,12.1
      if (endVal < 6.6) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7.3) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.3) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 12.1) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 15
    if (month == 15) {
      //6.8,7.5,8.5,12.4
      if (endVal < 6.8) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7.5) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.5) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 12.4) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 16
    if (month == 16) {
      //6.9,7.7,8.7,12.1
      if (endVal < 6.9) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7.7) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.7) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 12.1) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }

    //warnings for month 17

    if (month == 17) {
      //7.1,7.8,8.8,12.9
      if (endVal < 7.1) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7.8) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.8) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 12.9) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 18
    if (month == 18) {
      //7.2,8,9,13.2
      if (endVal < 7.2) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 8) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 9) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 13.2) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 19
    if (month == 19) {
      //8.4,7.2,9.2,13.5
      if (endVal < 8.4) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 7.2) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.2) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 13.5) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
    //warnings for month 20

    if (month == 20) {
      //7.5,8.4,9.4,13.7
      if (endVal < 7.5) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 8.4) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.4) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 13.7) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 21
    if (month == 21) {
      //7.7,8.5,9.6,14
      if (endVal < 7.7) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 8.5) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.6) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 14) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
    //warnings for month 22

    if (month == 22) {
      //7.7,8.7,9.8,14.3
      if (endVal < 7.7) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 8.7) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.8) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 14.3) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
    //warnings for month 23

    if (month == 23) {
      //7.9,8.9,10,14.1
      if (endVal < 7.9) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 8.9) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 10) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 14.1) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }
//warnings for month 24
    if (month == 24) {
      //8,9,10.2,14.8
      if (endVal < 8) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 9) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 10.2) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 14.8) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }

    //warnings for month 25

    if (month == 25) {
      if (endVal < 2.7) {
        message = "Severe Under Height";
        col = Colors.redAccent[700];
      } else if (endVal < 3.1) {
        message = "Moderate Under Height";
        col = Colors.deepOrange[400];
      } else if (endVal < 3.6) {
        message = 'Risk for Under Height';
        col = Colors.orange[300];
      } else if (endVal < 5.4) {
        message = "Normal Height";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Height";
        col = Colors.lightBlue[400];
      }
    }

    if (message == null) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: IconTheme(
                  data: IconThemeData(color: col),
                  child: Icon(Icons.favorite),
                ),
              ),
              label: Text(message),
            ),
            Expanded(
              child: charts.LineChart(_seriesLineData,
                  defaultRenderer: new charts.LineRendererConfig(
                      includeLine: true, includeArea: false, stacked: false),
                  animate: true,
                  animationDuration: Duration(seconds: 2),
                  behaviors: [
                    new charts.ChartTitle('Months',
                        behaviorPosition: charts.BehaviorPosition.bottom,
                        titleOutsideJustification:
                            charts.OutsideJustification.middleDrawArea),
                    new charts.ChartTitle('Height',
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
}
//for a single point
class Points {
  var x;
  var y;
  Points(this.x, this.y);
}
