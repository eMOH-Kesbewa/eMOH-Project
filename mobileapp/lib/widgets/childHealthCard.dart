/**
 * To display child health data
 */
import 'package:flutter/material.dart';
import 'package:mobileapp/pages/babyInfo/childHEalthView.dart';
import 'package:mobileapp/services/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    try {
      if (choice.count == 1) {
        return EasyLocalizationProvider(
          data: data,
          child: SingleChildScrollView(
            child: Card(
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('date')),
                      trailing: Text(choice.date),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('eyes')),
                      trailing: Text(choice.eye),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('squint')),
                      trailing: Text(choice.squint),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('cataract')),
                      trailing: Text(choice.cataract),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('sightleft')),
                      trailing: Text(choice.sightL),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('sightright')),
                      trailing: Text(choice.sightR),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('weight')),
                      trailing: Text(choice.nightBlind),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('height')),
                      trailing: Text(choice.bitoSpots),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('hearingleft')),
                      trailing: Text(choice.hearingL),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('hearingright')),
                      trailing: Text(choice.hearingR),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('heart')),
                      trailing: Text(choice.weight),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('lungs')),
                      trailing: Text(choice.height),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('hipjoint')),
                      trailing: Text(choice.heart),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(
                          AppLocalizations.of(context).tr('inheritedProb')),
                      trailing: Text(choice.lungs),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(
                          AppLocalizations.of(context).tr('otherdiseases')),
                      trailing: Text(choice.hipJoint),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('dentalspots')),
                      trailing: Text(choice.inhProblems),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(
                          AppLocalizations.of(context).tr('dentalcavities')),
                      trailing: Text(choice.otherDiseases),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title:
                          Text(AppLocalizations.of(context).tr('nightblind')),
                      trailing: Text(choice.officer),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(AppLocalizations.of(context).tr('bitospots')),
                      trailing: Text(choice.dentalSpots),
                    ),
                    ListTile(
                      leading: growBulletIcon,
                      title: Text(
                          AppLocalizations.of(context).tr('checkedofficer')),
                      trailing: Text(choice.dentalCavities),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      return Text('No Data');
    }

    try {
      if (choice.count == 2) {
        return SingleChildScrollView(
          child: Card(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('date')),
                    trailing: Text(choice.date),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('eyes')),
                    trailing: Text(choice.eye),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('squint')),
                    trailing: Text(choice.squint),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('cataract')),
                    trailing: Text(choice.cataract),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('nightblind')),
                    trailing: Text(choice.nightBlind),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('bitospots')),
                    trailing: Text(choice.bitoSpots),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('hearingleft')),
                    trailing: Text(choice.hearingL),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('hearingright')),
                    trailing: Text(choice.hearingR),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('weight')),
                    trailing: Text(choice.weight),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('height')),
                    trailing: Text(choice.height),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('heart')),
                    trailing: Text(choice.heart),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('lungs')),
                    trailing: Text(choice.lungs),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('hipjoint')),
                    trailing: Text(choice.hipJoint),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('inheritedProb')),
                    trailing: Text(choice.inhProblems),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('otherdiseases')),
                    trailing: Text(choice.otherDiseases),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('checkedofficer')),
                    trailing: Text(choice.officer),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('dentalspots')),
                    trailing: Text(choice.dentalSpots),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(
                        AppLocalizations.of(context).tr('denatalcavities')),
                    trailing: Text(choice.dentalCavities),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    } catch (e) {
      return Text('No Data');
    }

    try {
      if (choice.count == 3) {
        return SingleChildScrollView(
          child: Card(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('date')),
                    trailing: Text(choice.date),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('eyes')),
                    trailing: Text(choice.eye),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('squint')),
                    trailing: Text(choice.squint),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('cataract')),
                    trailing: Text(choice.cataract),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('hearingleft')),
                    trailing: Text(choice.hearingL),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('hearingright')),
                    trailing: Text(choice.hearingR),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('weight')),
                    trailing: Text(choice.weight),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('height')),
                    trailing: Text(choice.height),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('heart')),
                    trailing: Text(choice.heart),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('lungs')),
                    trailing: Text(choice.lungs),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('hipjoint')),
                    trailing: Text(choice.hipJoint),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('inheritedProb')),
                    trailing: Text(choice.inhProblems),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('otherdiseases')),
                    trailing: Text(choice.otherDiseases),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('dentalspots')),
                    trailing: Text(choice.dentalSpots),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('dentalcavities')),
                    trailing: Text(choice.dentalCavities),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('checkedofficer')),
                    trailing: Text(choice.officer),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    } catch (e) {
      return Text('No Data');
    }

    try {
      if (choice.count == 4) {
        return SingleChildScrollView(
          child: Card(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('date')),
                    trailing: Text(choice.date),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('eyes')),
                    trailing: Text(choice.eye),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('squint')),
                    trailing: Text(choice.squint),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('cataract')),
                    trailing: Text(choice.cataract),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('hearingleft')),
                    trailing: Text(choice.hearingL),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('hearingright')),
                    trailing: Text(choice.hearingR),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('weight')),
                    trailing: Text(choice.weight),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('height')),
                    trailing: Text(choice.height),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('heart')),
                    trailing: Text(choice.heart),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('lungs')),
                    trailing: Text(choice.lungs),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title: Text(AppLocalizations.of(context).tr('hipjoint')),
                    trailing: Text(choice.hipJoint),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('inheritedProb')),
                    trailing: Text(choice.inhProblems),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('otherdiseases')),
                    trailing: Text(choice.otherDiseases),
                  ),
                  ListTile(
                    leading: growBulletIcon,
                    title:
                        Text(AppLocalizations.of(context).tr('checkedofficer')),
                    trailing: Text(choice.officer),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    } catch (e) {
      return Text('No Data');
    }
  }
}
