import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/babyBasicInfoService.dart';
import 'package:mobileapp/services/style.dart';

class BabyBasicInfo extends StatefulWidget {
  @override
  _BabyBasicInfoState createState() => _BabyBasicInfoState();
}

class _BabyBasicInfoState extends State<BabyBasicInfo> {
  // Future <Baby> baby = fetchBaby();
  @override
  Widget build(BuildContext context) {
    final div = Divider(
      height: 10.0,
      color: Colors.grey[300],
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Information'),
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
                                      leading: detailIconBasicInfo,
                                      title: Text('Baby ID'),
                                      subtitle:
                                          Text(snapshot.data.id.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('PHM Area'),
                                      subtitle: Text(
                                          snapshot.data.phmArea.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('MOH Area'),
                                      subtitle: Text(
                                          snapshot.data.mohArea.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('Name'),
                                      subtitle:
                                          Text(snapshot.data.name.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('Birthday'),
                                      subtitle: Text(
                                          snapshot.data.birthday.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('Registered Date'),
                                      subtitle: Text(
                                          snapshot.data.regDate.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('Mother'),
                                      subtitle: Text(snapshot.data.nameOfMother
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('Age of Mother'),
                                      subtitle: Text(
                                          snapshot.data.ageOfMother.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: detailIconBasicInfo,
                                      title: Text('Address'),
                                      subtitle: Text(
                                          snapshot.data.address.toString()),
                                    ),
                                    div,
                                    // ListTile(
                                    //   leading: Icon(Icons.child_friendly),
                                    //   title: Text('Number of Children Alive'),
                                    //   subtitle: Text(snapshot.data.childrenCount
                                    //       .toString()),
                                    // ),
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
