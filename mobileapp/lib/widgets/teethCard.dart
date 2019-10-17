import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class TeethCard extends StatefulWidget {
  TeethCard(this.date, this.teethCount, this.status);
  String teethCount, date, status;
  @override
  _TeethCardState createState() => _TeethCardState();
}

var logger = Logger();
DateTime _date = DateTime.now();
initState() {
  String strDate = _date.toString().substring(0, 10);
  return strDate;
}

String today = initState();

class _TeethCardState extends State<TeethCard> {
  String teethCount, teethStatus;
  bool goodRadio, badRadio;
  final _formKey = GlobalKey<FormState>();

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
          Text('6th Month'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Teeth Count'),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text(widget.teethCount),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Date'),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text(widget.date),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Status of Teeth'),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text(widget.status),
                  Visibility(
                    visible: true,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 400.0,
                                child: TextFormField(
                                  validator: (String value) {
                                    int _val = int.parse(value);
                                    if (_val < 32) {
                                      return "Impossible Count"; //Control comes here when I check using the Debugger.
                                    } //if(value.isEmpty) closes here....
                                  },
                                  //autovalidate: true,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.person),
                                    hintText: 'Teeth Count',
                                    labelText: 'Name *',
                                  ),

                                  onSaved: (input) => teethCount = input,
                                ),
                              ),
                              //SizedBox(width: 50.0),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            ListTile(
                              leading: Text('Good'),
                              title: Expanded(
                                child: Radio(
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
                            SizedBox(
                              width: 50.0,
                            ),
                            ListTile(
                              leading: Text('Bad'),
                              title: Expanded(
                                child: Radio(
                                  value: goodRadio,
                                  onChanged: (bool) {
                                    setState(() {
                                      badRadio = !badRadio;
                                      if (badRadio) {
                                        teethStatus = 'Bad';
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        FlatButton(
                          child: Text('Set'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              )
              /* Visibility(
                  visible: true,
                  child: Row(
                    children: <Widget>[
                      TextFormField(
                        validator: (String value) {
                          int _val = int.parse(value);
                          if (_val < 32) {
                            return "Impossible Count"; //Control comes here when I check using the Debugger.
                          } //if(value.isEmpty) closes here....
                        },
                        //autovalidate: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Teeth Count',
                          labelText: 'Name *',
                        ),

                        onSaved: (input) => teethCount = input,
                      ),
                      SizedBox(width: 50.0),
                      FlatButton(
                        child: Text('Set'),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),*/
            ],
          ),
        ],
      ),
    );
  }
}
