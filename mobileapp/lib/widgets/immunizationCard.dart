import 'package:flutter/material.dart';
import 'package:mobileapp/services/style.dart';
import 'package:mobileapp/widgets/growthCard.dart';

class ImmunizationCard extends StatefulWidget {
  String title;
  String vaccine1,
      vaccine2,
      date1,
      effects1,
      batchNo1,
      date2,
      effects2,
      batchNo2;
  int vCount;
  bool bcgMark,bcg;

  ImmunizationCard(
      this.title,
      this.vaccine1,
      this.date1,
      this.effects1,
      this.batchNo1,
      this.vaccine2,
      this.date2,
      this.effects2,
      this.batchNo2,
      this.vCount);
  ImmunizationCard.one(this.title, this.vaccine1, this.date1, this.effects1,
      this.batchNo1, this.vCount);
      ImmunizationCard.bcg(this.title, this.vaccine1, this.date1, this.effects1,
      this.batchNo1, this.bcgMark);
  @override
  _ImmunizationCardState createState() => _ImmunizationCardState();
}

class _ImmunizationCardState extends State<ImmunizationCard> {
  @override
  Widget build(BuildContext context) {
    final div = Divider(
      height: 15.0,
      color: Colors.grey[400],

      //  2012-04-03 T18:30:00.000Z
    );
    if (widget.vCount == 2) {
      return Card(
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
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              div,
              ListTile(
                  leading: Text(widget.vaccine1),
                  title: Column(
                    children: <Widget>[
                      Text(
                        widget.date1.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.effects1,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.batchNo1)),
              ListTile(
                  leading: Text(widget.vaccine2),
                  title: Column(
                    children: <Widget>[
                      Text(
                        widget.date2.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.effects2,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.batchNo2)),
            ],
          ),
        ),
      );
    }
    if (widget.vCount == 1) {
      return Card(
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
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              div,
              ListTile(
                  leading: Text(widget.vaccine1),
                  title: Column(
                    children: <Widget>[
                      Text(
                        widget.date1.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.effects1,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.batchNo1)),
            ],
          ),
        ),
      );
    }
    if(widget.bcgMark != null){
      ListTile(
                  leading: Text(widget.vaccine1),
                  title: Column(
                    children: <Widget>[
                      Text(
                        widget.date1.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.effects1,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        widget.bcgMark.toString(),
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  trailing: Text(widget.batchNo1));
    }
    else{
      return Center(child: CircularProgressIndicator(),);
    }
  }
}
