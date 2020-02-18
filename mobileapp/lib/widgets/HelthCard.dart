import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/style.dart';
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class HelthCard extends StatefulWidget {
  String title;
  String oneToFiveVal,
      sixToTenVal,
      fteenToTfirstVal,
      aroundFourtyVal,
      date1,
      date2,
      date3,
      date4;
  HelthCard(
      this.title,
      this.oneToFiveVal,
      this.sixToTenVal,
      this.fteenToTfirstVal,
      this.aroundFourtyVal,
      this.date1,
      this.date2,
      this.date3,
      this.date4);
  @override
  _HelthCardState createState() => _HelthCardState();
}

class _HelthCardState extends State<HelthCard> {
  var logger = Logger();
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    final div = Divider(
      height: 15.0,
      color: Colors.grey[400],

      //  2012-04-03 T18:30:00.000Z
      //2019-12-15T00:00:00.000Z
    );
    logger.i(widget.date1);
    logger.i(widget.date2);
    logger.i(widget.date3);
    logger.i(widget.date4);

    String date1x, date2x, date3x, date4x;
    String oneToFiveValx, sixToTenValx, fteenToTfirstValx, aroundFourtyValx;
    if (widget.date1 == 'No Data') {
      date1x = "No Data";
    } else {
      date1x = widget.date1.toString().substring(0, 10);
    }
    if (widget.date2 == 'No Data') {
      date2x = "No Data";
    } else {
      date2x = widget.date2.toString().substring(0, 10);
    }
    if (widget.date3 == 'No Data') {
      date3x = "No Data";
    } else {
      date3x = widget.date3.toString().substring(0, 10);
    }
    if (widget.date4 == 'No Data') {
      date4x = "No Data";
    } else {
      date4x = widget.date4.toString().substring(0, 10);
    }
/////////////
    if (widget.oneToFiveVal == "No Data") {
      oneToFiveValx = "No Data";
    } else {
      oneToFiveValx = widget.oneToFiveVal;
    }

    if (widget.aroundFourtyVal == "No Data") {
      aroundFourtyValx = "No Data";
    } else {
      aroundFourtyValx = widget.aroundFourtyVal;
    }
    if (widget.sixToTenVal == "No Data") {
      sixToTenValx = "No Data";
    } else {
      sixToTenValx = widget.sixToTenVal;
    }
    if (widget.fteenToTfirstVal == "No Data") {
      fteenToTfirstValx = "No Data";
    } else {
      fteenToTfirstValx = widget.fteenToTfirstVal;
    }

    try {
      return EasyLocalizationProvider(
        data: data,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25.0,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                div,
                ListTile(
                    leading: growBulletIcon,
                    title: Column(
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).tr('from1-5days'),
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          //2019-12-15T00:00:00.000Z
                          date1x,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    trailing: Text(oneToFiveValx)),
                ListTile(
                    leading: growBulletIcon,
                    title: Column(
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).tr('from6-10days'),
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          date2x,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    trailing: Text(sixToTenValx)),
                ListTile(
                    leading: growBulletIcon,
                    title: Column(
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).tr('from14-21days'),
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          date3x,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    trailing: Text(fteenToTfirstValx)),
                ListTile(
                    leading: growBulletIcon,
                    title: Column(
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context).tr('around42days'),
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          date4x,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    trailing: Text(aroundFourtyValx)),
              ],
            ),
          ),
        ),
      );
    } catch (e) {
      return Text('No Data');
    }
  }
}
