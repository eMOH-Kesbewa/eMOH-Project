/**
 * To view baby grwoing details
 */

import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyInfo/growingView.dart';
import 'package:mobileapp/widgets/growthCard.dart';


class Display extends StatelessWidget {
  //const Display({Key key, this.choice,}) : super(key: key);
  Display({Key key, this.choice}) : super(key: key);
  final Choice choice;
  IconData icon;
  String title, chipTitle;
  GrowthCard card1, card2;

  @override
  Widget build(BuildContext context) {
    if (choice.cards == 6) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage("images/mother.png"),
                backgroundColor: Colors.grey.shade800,
                //child: Text('From the First Month of Birth'),
              ),
              label: Text(
                choice.chipTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            choice.card1,
            choice.card2,
            choice.card3,
            choice.card4,
            choice.card5,
            choice.card6,
          ],
        ),
      );
    }
    if (choice.cards == 5) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage("images/mother.png"),
                backgroundColor: Colors.grey.shade800,
                //child: Text('From the First Month of Birth'),
              ),
              label: Text(
                choice.chipTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            choice.card1,
            choice.card2,
            choice.card3,
            choice.card4,
            choice.card5,
          ],
        ),
      );
    }
    if (choice.cards == 4) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage("images/mother.png"),
                backgroundColor: Colors.grey.shade800,
                //child: Text('From the First Month of Birth'),
              ),
              label: Text(
                choice.chipTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            choice.card1,
            choice.card2,
            choice.card3,
            choice.card4,
          ],
        ),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
