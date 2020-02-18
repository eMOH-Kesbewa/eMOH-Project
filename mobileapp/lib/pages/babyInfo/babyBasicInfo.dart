/*
 *View basic information about baby 
 */
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/services/babyService/babyBasicInfoService.dart';
import 'package:mobileapp/services/style.dart';

class BabyBasicInfo extends StatefulWidget {
  @override
  _BabyBasicInfoState createState() => _BabyBasicInfoState();
}

class _BabyBasicInfoState extends State<BabyBasicInfo> {
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
            title: Text(AppLocalizations.of(context).tr('basicInfo')),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: FutureBuilder<Baby>(
                      future:
                          fetchBaby(), //get baby data from babyBasicInfoService.dart
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.none) {
                          return Center(
                            child:
                                Text('Please Check Your Internet Connection'),
                          );
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          //when loading
                          return Center(child: CircularProgressIndicator());
                        }
                        if (snapshot.hasData) {
                          //after loading
                          return SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Card(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('babyid')),
                                        subtitle:
                                            Text(snapshot.data.id.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('MOHArea')),
                                        subtitle: Text(
                                            snapshot.data.phmArea.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('PHMArea')),
                                        subtitle: Text(
                                            snapshot.data.mohArea.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('name')),
                                        subtitle:
                                            Text(snapshot.data.name.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('birthday')),
                                        subtitle: Text(
                                            snapshot.data.birthday.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('regDate')),
                                        subtitle: Text(
                                            snapshot.data.regDate.toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('mothername')),
                                        subtitle: Text(snapshot
                                            .data.nameOfMother
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('ageOfMother')),
                                        subtitle: Text(snapshot.data.ageOfMother
                                            .toString()),
                                      ),
                                      div,
                                      ListTile(
                                        leading: detailIconBasicInfo,
                                        title: Text(AppLocalizations.of(context)
                                            .tr('address')),
                                        subtitle: Text(
                                            snapshot.data.address.toString()),
                                      ),
                                      div,
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else if (snapshot.hasError) {
                          //no data or connection error
                          return Column(
                            children: <Widget>[
                              Icon(
                                Icons.error_outline,
                                size: 50.0,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Check Your Internet Connection',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )
                            ],
                          );
                        }
                        // By default, show a loading spinner.
                        return Center(child: CircularProgressIndicator());
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
