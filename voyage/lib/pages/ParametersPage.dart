// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:voyage/menu/drawer.widget.dart';

class ParametersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Parameters'),
      ),
      body: Center(
        child: Text(
          'Page Parameters',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}