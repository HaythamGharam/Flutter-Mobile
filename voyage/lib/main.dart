// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voyage/pages/ContactPage.dart';
import 'package:voyage/pages/GalleriePage.dart';
import 'package:voyage/pages/InscriptionPage.dart';
import 'package:voyage/pages/LoginPage.dart';
import 'package:voyage/pages/HomePage.dart';
import 'package:voyage/pages/MeteoPage.dart';
import 'package:voyage/pages/ParametersPage.dart';
import 'package:voyage/pages/PaysPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/inscription': (BuildContext context) => InscriptionPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/home': (BuildContext context) => HomePage(),
    '/meteo': (BuildContext context) => MeteoPage(),
    '/contact': (BuildContext context) => ContactPage(),
    '/parameters': (BuildContext context) => ParametersPage(),
    '/gallerie': (BuildContext context) => GalleriePage(),
    '/pays': (BuildContext context) => PaysPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      title: 'Voyage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> prefs) {
          var x = prefs.data;
          if (prefs.hasData) {
            bool conn = x?.getBool('connecte') ?? false;
            if (conn) return HomePage();
          }
          return LoginPage();
        },
      ),
    );
  }
}
