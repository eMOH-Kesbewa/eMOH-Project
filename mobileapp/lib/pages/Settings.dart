/**
 * Settings page
 */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String curLan; //current language

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    curLan = AppLocalizations.of(context).tr('selectedlanguage');
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
          appBar: AppBar(
            // title: Text('Settings'),
            title: Text(AppLocalizations.of(context).tr('title')),
          ),
          body: Column(
            children: <Widget>[
              //change language
              ListTile(
                title: Text(AppLocalizations.of(context).tr('currentlan')),
                subtitle:
                    Text(AppLocalizations.of(context).tr('selectedlanguage')),
                trailing: OutlineButton(
                  child: curLan == "English" ? Text('සිංහල') : Text('English'),
                  onPressed: () {
                    //data.changeLocale(Locale('si','SL'));
                    if (curLan == "English") {
                      this.setState(() {
                        data.changeLocale(Locale("si", "SL"));
                        print(Localizations.localeOf(context).languageCode);
                        curLan = 'සිංහල';
                        // logger.v(curLan);
                      });
                    } else {
                      this.setState(() {
                        data.changeLocale(Locale("en", "US"));
                        print(Localizations.localeOf(context).languageCode);
                        curLan = 'English';
                        //logger.v(curLan);
                      });
                    }
                  },
                ),
              )
            ],
          )),
    );
  }
}
