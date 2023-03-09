// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:voyage/menu/drawer.widget.dart';

class PaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Pays'),
      ),
      body: Center(
        child: Text(
          'Page Pays',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
