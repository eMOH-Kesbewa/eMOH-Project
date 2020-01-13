import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    final div = Divider(
      height: 15.0,
      color: Colors.grey[400],

      //  2012-04-03 T18:30:00.000Z
    );
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
                    style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
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
                        widget.date1.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.oneToFiveVal)),
              ListTile(
                  leading: growBulletIcon,
                  title: Column(
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('from6-10days'),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.date2.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.sixToTenVal)),
              ListTile(
                  leading: growBulletIcon,
                  title: Column(
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('from14-21days'),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.date3.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.fteenToTfirstVal)),
              ListTile(
                  leading: growBulletIcon,
                  title: Column(
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).tr('around42days'),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.date4.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.aroundFourtyVal)),
            ],
          ),
        ),
      ),
    );
  }
}
