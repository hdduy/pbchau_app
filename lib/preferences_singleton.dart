import 'package:shared_preferences/shared_preferences.dart';

class PreferencesSingleton {
  factory PreferencesSingleton() {
    return _singleton;
  }

  PreferencesSingleton._internal();

  SharedPreferences get prefs => PreferencesSingleton.preferences;

  static final PreferencesSingleton _singleton =
      PreferencesSingleton._internal();

  static SharedPreferences preferences;
}
