import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/style.dart';

class TeethCard extends StatefulWidget {
  TeethCard(this.date, this.teethCount, this.status);
  String teethCount, date, status;

  @override
  _TeethCardState createState() => _TeethCardState();
}

var logger = Logger();
DateTime _date = DateTime.now();
String teethCount, teethStatus;
bool goodRadio = false, badRadio = false;

initState() {
  String strDate = _date.toString().substring(0, 10);
  return strDate;
}

String today = initState();

class _TeethCardState extends State<TeethCard> {
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;

        today = _date.toString().substring(0, 10);
        print("Date Selected: ${today}");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final pickDateButton = IconButton(
      onPressed: () {
        _selectDate(context);
      },
      tooltip: 'Pick Date',
      icon: Icon(Icons.calendar_today),
      iconSize: 25.0,
    );
    final pickedDate = Text(
      '${today}',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      //style: style,
    );
    logger.e(widget.teethCount);
    return Card(
      child: Column(
        children: <Widget>[
          Visibility(
            visible: false,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: growBulletIcon,
                  title: Text('Date'),
                  trailing: Text(widget.date.substring(0, 10)),
                ),
                ListTile(
                  leading: growBulletIcon,
                  title: Text('Teeth Count'),
                  trailing: Text(widget.teethCount),
                ),
                ListTile(
                  leading: growBulletIcon,
                  title: Text('Status of teeth'),
                  trailing: Text(widget.status),
                ),
              ],
            ),
          ),
          Visibility(
            visible: true,
            child: Column(
              children: <Widget>[
                Container(
                  width: 100.0,
                  //child: TextField(),
                  child: TextFormField(
//key: _formKey,
                    validator: (String value) {
                      int _val = int.parse(value);
                      if (_val < 32) {
                        return "Impossible Count"; //Control comes here when I check using the Debugger.
                      } //if(value.isEmpty) closes here....
                    },
                    
                    //autovalidate: true,
                    decoration: const InputDecoration(
                      hintText: 'Teeth Count',
                    ),

                    onSaved: (input) => teethCount = input,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: pickedDate,
                  width: 100.0,
                ),
                pickDateButton,
                Row(
                  children: <Widget>[
                    SizedBox(
                      child: Container(
                        width: 200.0,
                        child: RadioListTile(
                          title: Text('Good'),
                          value: goodRadio,
                          onChanged: (bool x) {
                            setState(() {
                              logger.wtf(goodRadio);
                              goodRadio = !goodRadio;
                            });
                          },
                        ),
                        // child: ListTile(
                        //   leading: Text('Bad'),
                        //   trailing: Radio(
                        //     value: false,
                        //     onChanged: (bool) {
                        //       setState(() {
                        //         badRadio = !badRadio;
                        //         if (badRadio) {
                        //           teethStatus = 'Bad';
                        //         }
                        //       });
                        //     },
                        //   ),
                        // ),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        width: 100.0,
                        child: ListTile(
                          leading: Text('Good'),
                          trailing: Radio(
                            value: goodRadio,
                            onChanged: (bool) {
                              setState(() {
                                goodRadio = !goodRadio;
                                if (goodRadio) {
                                  teethStatus = 'Good';
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                FlatButton(
                  child: Text('Submit'),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
