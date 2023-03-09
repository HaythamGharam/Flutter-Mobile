// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:voyage/menu/drawer.widget.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Text(
          'Page Contact',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
