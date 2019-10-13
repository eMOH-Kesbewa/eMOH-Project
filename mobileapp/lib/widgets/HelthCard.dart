import 'package:flutter/material.dart';
import 'package:mobileapp/services/style.dart';

class HelthCard extends StatefulWidget {
  String dateRange,title;
  @override
  _HelthCardState createState() => _HelthCardState();
}

class _HelthCardState extends State<HelthCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
              height: 20.0,
            ),
            ListTile(
              leading: Text(
                'From 1-5 Days',
                style: TextStyle(fontSize: 15.0),
              ),
              title: Column(
                
              ),
            
              trailing: Text(''), //Text(snapshot.data.layingFaceDownOcc.toString()),
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
                SizedBox(width: 20.0,),
                FlatButton(
                  child: Text('Set'),
                  color: Colors.grey[200],
                  onPressed: (){
                    logger.wtf('occAge');
                    print(widget.occAge);
                     updateDetails(widget.funText,widget.occAge).then((res) {
                    Toast.show("Done", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                  }).catchError((e) {
                    Toast.show("An Error Has Occured", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
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
                'Confrimed Age (Months)',
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
                'Designation of the officer who confrimed',
                style: TextStyle(fontSize: 15.0),
              ),
              trailing: Text(widget.officer),
            ),
          ],
        ),
      ),
    );
  }
}