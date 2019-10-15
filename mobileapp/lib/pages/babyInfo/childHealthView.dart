import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/childHealthService.dart';
import 'package:mobileapp/services/globals.dart';
import 'package:mobileapp/widgets/cardDisplay.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';
import 'package:mobileapp/widgets/childHealthCard.dart';
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:mobileapp/widgets/sixWToThreeM.dart';
import 'package:toast/toast.dart';
import 'package:mobileapp/services/globals.dart' as globals;

class ChildHealthView extends StatefulWidget {
  @override
  _ChildHealthViewState createState() => _ChildHealthViewState();
}

class _ChildHealthViewState extends State<ChildHealthView> {
  Future<Baby> baby = fetchBaby();
  TabController _tabController;

  @override
  var logger = Logger();
  @override
  Widget build(BuildContext context) {
    ChildHealthCard index;

    return FutureBuilder<Baby>(
      future: fetchBaby(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
         

          List<ChildHealthCard> choices = <ChildHealthCard>[
           ChildHealthCard.oneFour(snapshot.data.date1mo, snapshot.data.eye1mo, snapshot.data.squint1mo, snapshot.data.cataract1mo, snapshot.data.hearingL1mo, snapshot.data.hearingR1mo, snapshot.data.weight1mo, snapshot.data.height1mo, snapshot.data.heart1mo, snapshot.data.lungs1mo, snapshot.data.hipJoint1mo, snapshot.data.inhProblems1mo, snapshot.data.otherDiseases1mo,snapshot.data.officer1mo, 1),
          ];
          return DefaultTabController(
            length: choices.length,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Baby Growth'),
                bottom: TabBar(
                  isScrollable: true,
                  tabs: choices.map((ChildHealthCard choice) {
                    index = choice;
                    return Tab(
                      text: choice.title,
                      //icon: Icon(),
                    );
                  }).toList(),
                ),
              ),
              body: SizedBox(
                child: TabBarView(
                  children: choices.map((ChildHealthCard choice) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: choices,
                      )
                    );
                  }).toList(),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

// class Choice {
//   const Choice({this.title, this.icon});

//   final String title;
//   final IconData icon;
// }




//
