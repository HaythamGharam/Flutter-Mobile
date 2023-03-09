// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:voyage/menu/drawer.widget.dart';

class MeteoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Meteo'),
      ),
      body: Center(
        child: Text(
          'Page Meteo',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
