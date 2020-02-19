/**
 * Immunization card widget
 */
import 'package:flutter/material.dart';

class ImmunizationCard extends StatefulWidget {
  String title, title2;
  String vaccine1,
      vaccine2,
      date1,
      effects1,
      batchNo1,
      date2,
      effects2,
      batchNo2;
  int vCount;
  bool bcgMark;

  

  ImmunizationCard(
      this.title,
      // this.title2,
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
  ImmunizationCard.bcg(
      this.title,
      this.vaccine1,
      this.date1,
      this.effects1,
      this.batchNo1,
      this.title2,
      this.vaccine2,
      this.date2,
      this.effects2,
      this.batchNo2,
      this.bcgMark,
      this.vCount);
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
      try {
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
      } catch (e) {
        return Text('No Data');
      }
    }
    if (widget.vCount == 1) {
      try {
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
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                      maxLines: 3,
                      //overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                div,
                ListTile(
                    leading: Container(
                      width: 100.0,
                      child: Text(
                        widget.vaccine1,
                        softWrap: true,
                        // maxLines: 3,
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    title: Column(
                      children: <Widget>[
                        Text(
                          widget.date1.toString().substring(0, 10),
                          style: TextStyle(fontSize: 15.0),
                          maxLines: 1,
                        ),
                        Text(
                          widget.effects1,
                          style: TextStyle(fontSize: 15.0),
                          //maxLines: 3,
                        ),
                      ],
                    ),
                    trailing: Text(
                      widget.batchNo1,
                      maxLines: 3,
                    )),
              ],
            ),
          ),
        );
      } catch (e) {
        return Text('No Data');
      }
    }
    if (widget.vCount == 0) {
      try {
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
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: Text('BCG Scar'),
                  ),
                  label: Text(widget.bcgMark.toString()),
                ),
                Visibility(
                  visible: !widget.bcgMark,
                  child: ListTile(
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
                ),
              ],
            ),
          ),
        );
      } catch (e) {
        return Text('No Data');
      }

    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
