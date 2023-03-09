// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voyage/config/global.params.dart';
import 'package:voyage/menu/drawer.widget.dart';

class HomePage extends StatelessWidget {
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Wrap(
          children: [
            ...(GlobalParams.acceuil as List).map((item) {
              return InkWell(
                child: Ink.image(
                  height: 180,
                  width: 180,
                  image: item['image'],
                ),
                onTap: () {
                  if ('${item["route"]}' != "/login")
                    Navigator.pushNamed(context, "${item['route']}");
                  else
                    _onLogout(context);
                },
              );
            })
          ],
        ),
      ),
    );
  }

  _onLogout(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, '/auth');
  }
}
