import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:mobileapp/services/style.dart';
import 'package:toast/toast.dart';
import '../services/globals.dart' as globals;
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class GrowthCard extends StatefulWidget {
  String title, occAge, conAge, officer, funText;
  bool vis;
  GrowthCard(
    this.title,
    this.occAge,
    this.conAge,
    this.officer,
    this.vis,
    this.funText,
  );
  @override
  _GrowthCardState createState() => _GrowthCardState();
}

var logger = Logger();
String dropdownValue = 'Select';
String layingFaceDownOccVal;

class _GrowthCardState extends State<GrowthCard> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    final div = Divider(
      height: 15.0,
      color: Colors.grey[400],
    );
    try {
      return EasyLocalizationProvider(
        data: data,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                div,
                ListTile(
                  leading: growBulletIcon,
                  title: Text(
                    AppLocalizations.of(context).tr('occage'),
                    style: TextStyle(fontSize: 15.0),
                  ),
                  trailing: Text(widget
                      .occAge), //Text(snapshot.data.layingFaceDownOcc.toString()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Visibility(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        /*underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),*/
                        onChanged: (String newvalue) {
                          setState(() {
                            dropdownValue = newvalue;
                            widget.occAge = newvalue;
                            globals.layingFaceDownOcc = dropdownValue;
                            logger.wtf(globals.layingFaceDownOcc);
                            // widget.layingFaceDownOcc = dropdownAgeue;
                          });
                        },
                        items: <String>['Select', '1.5', '2', '2.5', '3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      FlatButton(
                        child: Text('Set'),
                        color: Colors.grey[200],
                        onPressed: () {
                          logger.wtf('occAge');
                          print(widget.occAge);
                          updateDetails(widget.funText, widget.occAge)
                              .then((res) {
                            Toast.show("Done", context,
                                duration: Toast.LENGTH_LONG,
                                gravity: Toast.BOTTOM);
                          }).catchError((e) {
                            Toast.show("An Error Has Occured", context,
                                duration: Toast.LENGTH_LONG,
                                gravity: Toast.BOTTOM);
                          });
                          setState(() {});
                        },
                      )
                    ],
                  ),
                  visible: widget.vis,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: growBulletIcon,
                  title: Text(
                    AppLocalizations.of(context).tr('conage'),
                    style: TextStyle(fontSize: 15.0),
                  ),
                  trailing: Text(widget.conAge),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  leading: growBulletIcon,
                  title: Text(
                    AppLocalizations.of(context).tr('desofficer'),
                    style: TextStyle(fontSize: 15.0),
                  ),
                  trailing: Text(widget.officer),
                ),
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
