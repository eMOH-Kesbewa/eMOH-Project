/**
 *View protection details about 
 *warnings need an update after database filled with data
 **/

import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/babyProtectionServeice.dart';
import 'package:mobileapp/services/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class BabyProtection extends StatefulWidget {
  @override
  _BabyProtectionState createState() => _BabyProtectionState();
}

class _BabyProtectionState extends State<BabyProtection> {
  static Future<Baby> baby =
      fetchBaby(); //get baby data from babyProtectionServeice.dart file
  var reasons = new List<Widget>(); //to display warning
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    final div = Divider(
      height: 10.0,
      color: Colors.grey[300],
    );
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).tr('proBaby')),
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
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (snapshot.hasData) {
                          if (snapshot.data.prematureBirthsStatus == "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('prematurebirth')),
                              ),
                            );
                          }
                          if (snapshot.data.inheritedProblemsStatus ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('inheritedprob')),
                              ),
                            );
                          }
                          if (snapshot.data.congenitalHypothyroidismState ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('congenitalHywar')),
                              ),
                            );
                          }
                          if (snapshot.data
                                  .serverIllnessOfTheMotherAfterDeliveryStatus ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('serverill')),
                              ),
                            );
                          }
                          if (snapshot
                                  .data.breastfeedingAtFirstSixMonthsStatus ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('breastfeedingaftersix')),
                              ),
                            );
                          }
                          if (snapshot.data.impairmentsOfGrowthStatus ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('impairments')),
                              ),
                            );
                          }
                          if (snapshot.data.deathOfMotherOrFatherStatus ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('deathofmotherorfather')),
                              ),
                            );
                          }
                          if (snapshot.data
                                  .separationOrDepatureOfMotherOrFatherStatus ==
                              "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('seperation')),
                              ),
                            );
                          }
                          if (snapshot.data.otherStatus == "Normal") {
                            reasons.add(
                              new ListTile(
                                leading: warningIcon,
                                title: Text(AppLocalizations.of(context)
                                    .tr('otherwarning')),
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
                                        title: Text(AppLocalizations.of(context)
                                            .tr('methodofdelivery')),
                                        subtitle: Text(snapshot
                                            .data.deliveryMethod
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                          leading: growBulletIcon,
                                          title: Text(
                                              AppLocalizations.of(context)
                                                  .tr('apgarvalue1')),
                                          subtitle: Text(
                                            snapshot.data.apgar1m.toString(),
                                          )),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('apgarvalue5')),
                                        subtitle: Text(
                                            snapshot.data.apgar5m.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('apgarvalue10')),
                                        subtitle: Text(
                                            snapshot.data.apgar10m.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('birthweight')),
                                        subtitle: Text(snapshot.data.birthWeight
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('gridle')),
                                        subtitle: Text(snapshot
                                            .data.gridleCircumference
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('lengthofthebaby')),
                                        subtitle: Text(
                                            snapshot.data.length.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('weightwhendis')),
                                        subtitle: Text(snapshot
                                            .data.dischargeWeight
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('hadvitaminK')),
                                        subtitle: Text(
                                            snapshot.data.vitaminK.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('breastfeeding')),
                                        subtitle: Text(snapshot
                                            .data.breastFeedingFirstHr
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('breastfeedingstab')),
                                        subtitle: Text(snapshot
                                            .data.breastFeedingUnstability
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('breastfeedingcon')),
                                        subtitle: Text(snapshot
                                            .data.breastFeedingConnection
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: growBulletIcon,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('congenitalHy')),
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
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }

                        // By default, show a loading spinner.
                        return Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
