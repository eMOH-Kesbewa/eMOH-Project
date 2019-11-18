//warnings need an update after database filled with data

import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/babyProtectionServeice.dart';
import 'package:mobileapp/services/style.dart';

class BabyProtection extends StatefulWidget {
  @override
  _BabyProtectionState createState() => _BabyProtectionState();
}

class _BabyProtectionState extends State<BabyProtection> {
  static Future<Baby> baby = fetchBaby();
  // Baby newBaby;
  var reasons = new List<Widget>();
  var result = new List<Widget>();
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
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator(),);
                      }
                      print('${baby}');
                      // print(snapsh.ot.data.childrenCount);

                      if (snapshot.hasData) {
                        if (snapshot.data.prematureBirthsStatus == "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text("Premature Birth"),
                            ),
                          );
                        }
                        if (snapshot.data.lowBirthWeightStatus == "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text("Low Birth Weight"),
                            ),
                          );
                        }
                        if (snapshot.data.neonatalAbnomalitiesStatus ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text('Neonatal Abnomalities'),
                            ),
                          );
                        }
                        if (snapshot.data.inheritedProblemsStatus == "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text('Inherited Problems'),
                            ),
                          );
                        }
                        if (snapshot.data.congenitalHypothyroidismState ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text('congenitalHypothyroidism'),
                            ),
                          );
                        }
                        if (snapshot.data
                                .serverIllnessOfTheMotherAfterDeliveryStatus ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title:
                                  Text('serverIllnessOfTheMotherAfterDelivery'),
                            ),
                          );
                        }
                        if (snapshot.data.breastfeedingAtFirstSixMonthsStatus ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text('breastfeedingAtFirstSixMonths'),
                            ),
                          );
                        }
                        if (snapshot.data.impairmentsOfGrowthStatus ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text('Impairments Of Growth'),
                            ),
                          );
                        }
                        if (snapshot.data.deathOfMotherOrFatherStatus ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text('death Of Mother Or Father'),
                            ),
                          );
                        }
                        if (snapshot.data
                                .separationOrDepatureOfMotherOrFatherStatus ==
                            "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text(
                                  "Separation or Depature of Mother or Father"),
                            ),
                          );
                        }
                        if (snapshot.data.otherStatus == "Normal") {
                          reasons.add(
                            new ListTile(
                              leading: warningIcon,
                              title: Text("Other"),
                            ),
                          );
                        }

                        return SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Method of Delivery'),
                                      subtitle: Text(snapshot
                                          .data.deliveryMethod
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                        leading: growBulletIcon,
                                        title: Text('Apgar value 1m'),
                                        subtitle: Text(
                                          snapshot.data.apgar1m.toString(),
                                        )),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Apgar value 5m'),
                                      subtitle: Text(
                                          snapshot.data.apgar5m.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Apgar value 10m'),
                                      subtitle: Text(
                                          snapshot.data.apgar10m.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Birth Weight'),
                                      subtitle: Text(
                                          snapshot.data.birthWeight.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title:
                                          Text('Gridle Circumference at Birth'),
                                      subtitle: Text(snapshot
                                          .data.gridleCircumference
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title:
                                          Text('Length of the Baby at Birth'),
                                      subtitle:
                                          Text(snapshot.data.length.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text(
                                          'Weight When Discharging From the Hospital'),
                                      subtitle: Text(snapshot
                                          .data.dischargeWeight
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Had Vitamin K?'),
                                      subtitle: Text(
                                          snapshot.data.vitaminK.toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text(
                                          'Breast Feeding Breast Feeding During the First Hour'),
                                      subtitle: Text(snapshot
                                          .data.breastFeedingFirstHr
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Breast Feeding Unstability'),
                                      subtitle: Text(snapshot
                                          .data.breastFeedingUnstability
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text('Breast Feeding Connection'),
                                      subtitle: Text(snapshot
                                          .data.breastFeedingConnection
                                          .toString()),
                                    ),
                                    div,
                                    ListTile(
                                      leading: growBulletIcon,
                                      title: Text(
                                          'Does Check Congenital Hypothyroidism'),
                                      subtitle: Text(snapshot
                                          .data.checkCongenitalHypothyroidism
                                          .toString()),
                                    ),
                                    div,
                                    Column(
                                      children: reasons,
                                    )
                                  ],
                                ),
                              )
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
                ),
                // Center(
                //   child: FutureBuilder (
                //     future:buildReason(baby.prematureBirthsStatus,snapshot.data.lowBirthWeightStatus,snapshot.data.neonatalAbnomalitiesStatus,snapshot.data.inheritedProblemsStatus,snapshot.data.congenitalHypothyroidismState,snapshot.data.serverIllnessOfTheMotherAfterDeliveryStatus,snapshot.data.breastfeedingAtFirstSixMonthsStatus,snapshot.data.impairmentsOfGrowthStatus,snapshot.data.deathOfMotherOrFatherStatus,snapshot.data.separationOrDepatureOfMotherOrFatherStatus,snapshot.data.otherStatus),
                //   ),
                // )
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

  // buildReason(
  //     String prematureBirthsStatus,
  //     String lowBirthWeightStatus,
  //     String neonatalAbnomalitiesStatus,
  //     String inheritedProblemsStatus,
  //     String congenitalHypothyroidismState,
  //     String serverIllnessOfTheMotherAfterDeliveryStatus,
  //     String breastfeedingAtFirstSixMonthsStatus,
  //     String impairmentsOfGrowthStatus,
  //     String deathOfMotherOrFatherStatus,
  //     String separationOrDepatureOfMotherOrFatherStatus,
  //     String otherStatus) {
  //   if (prematureBirthsStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text("Premature Birth"),
  //       ),
  //     );
  //   }
  //   if (lowBirthWeightStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text("Low Birth Weight"),
  //       ),
  //     );
  //   }
  //   if (neonatalAbnomalitiesStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (inheritedProblemsStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (congenitalHypothyroidismState == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (serverIllnessOfTheMotherAfterDeliveryStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (breastfeedingAtFirstSixMonthsStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (impairmentsOfGrowthStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (deathOfMotherOrFatherStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text(prematureBirthsStatus),
  //       ),
  //     );
  //   }
  //   if (separationOrDepatureOfMotherOrFatherStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text("Separation or Depature of Mother or Father"),
  //       ),
  //     );
  //   }
  //   if (otherStatus == "Normal") {
  //     reasons.add(
  //       new ListTile(
  //         leading: warningIcon,
  //         title: Text("Other"),
  //       ),
  //     );
  //   }
  // print(reasons);
  // return reasons;
}
