// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:phanboichau_app/injection.dart';
import 'package:phanboichau_app/preferences_singleton.dart';
import 'package:phanboichau_app/presentation/core/application.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  PreferencesSingleton.preferences = await SharedPreferences.getInstance();
  runApp(Application());
}
