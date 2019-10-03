import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/babyProtectionServeice.dart';

class BabyProtection extends StatefulWidget {
  @override
  _BabyProtectionState createState() => _BabyProtectionState();
}

class _BabyProtectionState extends State<BabyProtection> {
  // Future <Baby> baby = fetchBaby();
  @override
  Widget build(BuildContext context) {
    final div = Divider(
      height: 10.0,
      color: Colors.grey[300],
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('Protection of Baby'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: FutureBuilder<Baby>(
                    future: fetchBaby(),
                    builder: (context, snapshot) {
                      print('snapdata');
                     // print(snapshot.data.childrenCount);

                      if (snapshot.hasData) {
                        return SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                             
                              Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.perm_identity),
                                      title: Text('Method of Delivery'),
                                      subtitle:
                                          Text(snapshot.data.deliveryMethod.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.home),
                                      title: Text('Apgar value 1m'),
                                      subtitle: Text(
                                          snapshot.data.apgar1m.toString(),
                                    )),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.ac_unit),
                                      title: Text('Apgar value 5m'),
                                      subtitle: Text(
                                          snapshot.data.apgar5m.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.ac_unit),
                                      title: Text('Apgar value 10m'),
                                      subtitle:
                                          Text(snapshot.data.apgar10m.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Birth Weight'),
                                      subtitle: Text(
                                          snapshot.data.birthWeight.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Gridle Circumference at Birth'),
                                      subtitle: Text(
                                          snapshot.data.gridleCircumference.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Length of the Baby at Birth'),
                                      subtitle: Text(snapshot.data.length
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Weight When Discharging From the Hospital'),
                                      subtitle: Text(
                                          snapshot.data.dischargeWeight.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Had Vitamin K?'),
                                      subtitle: Text(
                                          snapshot.data.vitaminK.toString()),
                                    ),
                                div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Breast Feeding Breast Feeding During the First Hour'),
                                      subtitle: Text(
                                          snapshot.data.breastFeedingFirstHr.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Breast Feeding Unstability'),
                                      subtitle: Text(
                                          snapshot.data.breastFeedingUnstability.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Breast Feeding Connection'),
                                      subtitle: Text(
                                          snapshot.data.breastFeedingConnection.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: Icon(Icons.child_friendly),
                                      title: Text('Does Check Congenital Hypothyroidism'),
                                      subtitle: Text(
                                          snapshot.data.checkCongenitalHypothyroidism.toString()),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ); //Text(snapshot.data.childrenCount);
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      // By default, show a loading spinner.
                      return Center(child: CircularProgressIndicator());
                    },
                  ),
                )
              ],
            ),
          ),
        ) /*Column(
          children: <Widget>[
             Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellov')
          ],
        )*/
        );
  }
}
