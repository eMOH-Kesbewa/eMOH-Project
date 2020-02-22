/**
 * Teeth widget to view teeth data
 */
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/teethService.dart';
import 'package:mobileapp/services/style.dart';
import 'package:toast/toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class TeethCard extends StatefulWidget {
  TeethCard(this.date, this.teethCount, this.status, this.formVis, this.listVis,
      this.dateField, this.countField, this.statusField,
      {this.callback});
  String teethCount, date, status, field;
  String statusField, dateField, countField;
  bool formVis, listVis;
  VoidCallback callback;

  @override
  _TeethCardState createState() => _TeethCardState();
}

var logger = Logger();
DateTime _date = DateTime.now();
String teethCount, teethStatus = "good";
bool goodRadio = false, badRadio = false;

initState() {
  String strDate = _date.toString().substring(0, 10);
  return strDate;
}

String today = initState();

class _TeethCardState extends State<TeethCard> {
  bool _isRadioSelected = false;
  final teethCountController = TextEditingController();
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
        logger.w(today);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

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
    try {
      return EasyLocalizationProvider(
        data: data,
        child: Card(
          child: Column(
            children: <Widget>[
              Visibility(
                visible: widget.listVis,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('checkeddate')),
                      trailing: Text(widget.date.substring(0, 10)),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('teethcount')),
                      trailing: Text(widget.teethCount),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(
                          AppLocalizations.of(context).tr('statusofteeth')),
                      trailing: Text(widget.status),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: widget.formVis,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      //child: TextField(),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: teethCountController,
                          validator: (input) {
                            // int _val = int.parse(teethCountController.text.toString());
                            if (input.isEmpty) {
                              return "Enter teeth count";
                            }
                            if (int.parse(input) > 32) {
                              return "Invalid Count";
                            }

                            return null;
                          },

                          //autovalidate: true,
                          decoration: const InputDecoration(
                            hintText: 'Teeth Count',
                          ),

                          //onSaved: (input) => teethCountController.text,
                        ),
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
                              value: false,
                              groupValue: _isRadioSelected,
                              onChanged: (bool value) {
                                setState(() {
                                  logger.wtf(goodRadio);
                                  _isRadioSelected = value;
                                  teethStatus = 'good';
                                  logger.v(teethStatus);
                                  if (_isRadioSelected) {}
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            width: 100.0,
                            child: ListTile(
                              leading: Text('Bad'),
                              trailing: Radio(
                                value: true,
                                groupValue: _isRadioSelected,
                                onChanged: (bool value) {
                                  setState(() {
                                    _isRadioSelected = value;
                                    teethStatus = 'bad';
                                    logger.v(teethStatus);
                                    if (_isRadioSelected) {}
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlatButton(
                      child: Text('Set'),
                      color: Colors.grey[200],
                      onPressed: () {
                        logger.wtf(teethCountController.text.toString());

                        if (_formKey.currentState.validate()) {
                          logger.wtf(teethCountController.text.toString());
                          updateDetails(
                                  teethCountController.text.toString(),
                                  today,
                                  teethStatus,
                                  widget.dateField,
                                  widget.countField,
                                  widget.statusField)
                              .then((res) {
                            Toast.show("Done", context,
                                duration: Toast.LENGTH_LONG,
                                gravity: Toast.BOTTOM);
                          }).catchError((e) {
                            logger.d(e);
                            Toast.show("An Error Has Occured", context,
                                duration: Toast.LENGTH_LONG,
                                gravity: Toast.BOTTOM);
                          });
                          setState(() {
                            widget.teethCount =
                                teethCountController.text.toString();
                            widget.status = teethStatus;
                            widget.date = today.substring(0, 10);
                            // widget.status =
                            widget.formVis = false;
                            widget.listVis = true;
                          });
                        } else {
                          Toast.show("Enter valid data", context,
                              duration: Toast.LENGTH_LONG,
                              gravity: Toast.BOTTOM);
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    } catch (e) {
      return Text('No Data');
    }
  }
}
