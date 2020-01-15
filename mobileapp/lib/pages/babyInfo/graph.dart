import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:mobileapp/services/babyService/chartService.dart';

class Chart extends StatefulWidget {
  final Widget child;

  Chart({Key key, this.child}) : super(key: key);

  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<charts.Series<Points, int>> _seriesLineData;
  // Future<WeightHeight> wh = fetchWeightHeight();
  // List _seriesLineData;

  //List<charts.Series<Sales, int>> _seriesLineData;

  //Future<WeightHeight> plot = fetchWeightHeight();

  List<Points> plot = List();

  var endVal, month;
  var message;
  Color sercolor = Color(0xff0000);
  //var sercolor = "0xff0000";
  Color modcolor = Color(0xffa500);
  Color riskcolor = Color(0xccff00);
  Color norcolor = Color(0x008000);
  Color ovcolor = Color(0x800080);
  Color col = Colors.white;

  //to display warnings.

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
        logger.v(it.length);

        var x = i / 5;
        month = x.round();

        plot.add(Points(i, val));
      }

      setState(() {
        logger.i('in setstate');
        _generateData();
        endVal = plot.length;
        logger.d('endval');
        logger.d(endVal);
      });
    }).catchError((e) {
      logger.e(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.wtf(_seriesLineData.length);

    // final  theme = IconThemeData(color:Color(0xff0000) );

    if (month == 1) {
      //2.7,3.13.6,5.4
      if (endVal < 2.7) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 3.1) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 3.6) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 5.4) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 2) {
      //3.4,3.9,4.4,6.6
      if (endVal < 3.4) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 3.9) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 4.4) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 6.6) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 3) {
      //4,4.5,5.1,7.5
      if (endVal < 4) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 4.5) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 5.1) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 7.5) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 4) {
      //4.4,5,5.6,8.2
      if (endVal < 4.4) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 5) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 5.6) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 8.2) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 5) {
      //4.8,5.3,6,8.8
      if (endVal < 4.8) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 5.3) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 6) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 8.8) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 6) {
      //5.1,5.7,6.4,9.3
      if (endVal < 5.1) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 5.7) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 6.4) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 9.3) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 7) {
      //5.3,6,6.7,9.8
      if (endVal < 5.3) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 6) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 6.7) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 9.8) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 8) {
      // 5.5,6.2,7,10.2
      if (endVal < 5.5) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 6.2) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 7) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 10.2) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 9) {
      //5.8,6.4,7.2,10.5
      if (endVal < 5.8) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 6.4) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 7.2) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 10.5) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 10) {
      //6,6.6,7.5,10.9
      if (endVal < 6) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 6.6) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 7.5) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 10.9) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 11) {
      //6.1,6.8,7.7,11.2
      if (endVal < 6.1) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 6.8) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 7.7) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 11.2) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 12) {
      //6.3,7,8,11.5
      if (endVal < 6.3) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 8) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 11.5) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 13) {
      //6.5,7.2,8.1,11.8
      if (endVal < 6.5) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7.2) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.1) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 11.8) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 14) {
      //6.6,7.3,8.3,12.1
      if (endVal < 6.6) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7.3) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.3) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 12.1) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 15) {
      //6.8,7.5,8.5,12.4
      if (endVal < 6.8) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7.5) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.5) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 12.4) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 16) {
      //6.9,7.7,8.7,12.1
      if (endVal < 6.9) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7.7) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.7) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 12.1) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 17) {
      //7.1,7.8,8.8,12.9
      if (endVal < 7.1) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7.8) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 8.8) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 12.9) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 18) {
      //7.2,8,9,13.2
      if (endVal < 7.2) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 8) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 9) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 13.2) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 19) {
      //8.4,7.2,9.2,13.5
      if (endVal < 8.4) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 7.2) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.2) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 13.5) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 20) {
      //7.5,8.4,9.4,13.7
      if (endVal < 7.5) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 8.4) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.4) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 13.7) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 21) {
      //7.7,8.5,9.6,14
      if (endVal < 7.7) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 8.5) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.6) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 14) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 22) {
      //7.7,8.7,9.8,14.3
      if (endVal < 7.7) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 8.7) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 9.8) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 14.3) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 23) {
      //7.9,8.9,10,14.1
      if (endVal < 7.9) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 8.9) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 10) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 14.1) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 24) {
      //8,9,10.2,14.8
      if (endVal < 8) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 9) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 10.2) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 14.8) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }

    if (month == 25) {
      if (endVal < 2.7) {
        message = "Severe Under Weight";
        col = Colors.redAccent[700];
      } else if (endVal < 3.1) {
        message = "Moderate Under Weight";
        col = Colors.deepOrange[400];
      } else if (endVal < 3.6) {
        message = 'Risk for Under Weight';
        col = Colors.orange[300];
      } else if (endVal < 5.4) {
        message = "Normal Weight";
        col = Colors.lightGreenAccent[700];
      } else {
        message = "Over Weight";
        col = Colors.lightBlue[400];
      }
    }
    logger.d('month');
    logger.d(month);
    // if (month == 52) {
    //   if (endVal < 2.7) {
    //     message = "Severe Under Weight";
    //     col = sercolor;
    //   } else if (endVal < 3.1) {
    //     message = "Moderate Under Weight";
    //     col = modcolor;
    //   } else if (endVal < 3.6) {
    //     message = 'Risk for Under Weight';
    //     col = riskcolor;
    //   } else if (endVal < 5.4) {
    //     message = "Normal Weight";
    //     col = norcolor;
    //   } else {
    //     message = "Over Weight";
    //     col = ovcolor;
    //   }
    // }

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
