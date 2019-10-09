import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/eyeTestService.dart';

class UntilFive extends StatefulWidget {
  @override
  _UntilFiveState createState() => _UntilFiveState();
}

class _UntilFiveState extends State<UntilFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Growth of Child Until Five Years From Birth'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: fetchBaby(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator());
              else {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Chip(
                            avatar: CircleAvatar(
                              backgroundImage: AssetImage("images/mother.png"),
                              backgroundColor: Colors.grey.shade800,
                              //child: Text('From the First Month of Birth'),
                            ),
                            label: Text(
                              'From Six Weeks to Three Months',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),

                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'While lying face downwards raise the head',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                  leading: Icon(Icons.dashboard,color: Color(0xff468c98)),
                                  title: Text(
                                    'Occured Age (Months)',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  trailing: Text('http'),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                  leading: Icon(Icons.dashboard,color: Color(0xff468c98)),
                                  title: Text(
                                    'Confrimed Age (Months)',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  trailing: Text('http'),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                  leading: Icon(Icons.dashboard,color: Color(0xff468c98),),
                                  title: Text(
                                    'Designation of the officer who confrimed',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  trailing: Text('http'),
                                ),
                              ],
                            ),
                          ),
                        )
                        /*  Table(
                          defaultColumnWidth: IntrinsicColumnWidth(),
                          border: TableBorder.all(width: 1.0, color: Colors.black),
                          //defaultColumnWidth: FractionColumnWidth(0.25),
                          children:[
                            TableRow(children: [
                              TableCell(
                                
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Age')),
                              ),
                              Container(
                                width: ,
                              )
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Occured Age (Months)')),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Confrimed Age (Months')),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Designation of the officer who confrimed')),
                              ),
                            ]),
                             TableRow(children: [
                              TableCell(
                              
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Ageeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Age When Happening')),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Age When Confrim')),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Confrimed Officer')),
                              ),
                            ]),
                          ] 
                        )*/
                        // Card(
                        //   child: InkWell(
                        //     splashColor: Colors.blue.withAlpha(30),
                        //     onTap: () {
                        //       print('Card tapped.');
                        //     },
                        //     child: Container(
                        //       width: MediaQuery.of(context).size.width,
                        //       height: 100,
                        //       child: Column(
                        //         children: <Widget>[
                        //           Text(
                        //             'Lie on His Hips and Head Up Ageat The Time of Occurence',
                        //             overflow: TextOverflow.ellipsis,
                        //             maxLines: 3,
                        //           ),
                        //           Row(
                        //             children: <Widget>[
                        //               Text('dssa')
                        //             ],
                        //           )
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
