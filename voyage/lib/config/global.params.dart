// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Home",
      "icon": Icon(
        Icons.home,
        color: Colors.blue,
      ),
      "route": "/home"
    },
    {
      "title": "Meteo",
      "icon": Icon(
        Icons.sunny,
        color: Colors.blue,
      ),
      "route": "/meteo"
    },
    {
      "title": "Gallerie",
      "icon": Icon(
        Icons.photo,
        color: Colors.blue,
      ),
      "route": "/gallerie"
    },
    {
      "title": "Pays",
      "icon": Icon(
        Icons.location_city,
        color: Colors.blue,
      ),
      "route": "/pays"
    },
    {
      "title": "contact",
      "icon": Icon(
        Icons.contact_page,
        color: Colors.blue,
      ),
      "route": "/Contact"
    },
    {
      "title": "Parameters",
      "icon": Icon(
        Icons.settings,
        color: Colors.blue,
      ),
      "route": "/parameters"
    },
    {
      "title": "Deconnexion",
      "icon": Icon(
        Icons.logout,
        color: Colors.blue,
      ),
      "route": "/login"
    },
  ];
  static List<Map<String, dynamic>> acceuil = [
    {
      "image": AssetImage(
        'images/meteo.png',
      ),
      "route": "meteo"
    },
    {
      "image": AssetImage(
        'images/gallerie.png',
      ),
      "route": "gallerie"
    },
    {
      "image": AssetImage(
        'images/pays.png',
      ),
      "route": "pays"
    },
    {
      "image": AssetImage(
        'images/contact.png',
      ),
      "route": "contact"
    },
    {
      "image": AssetImage(
        'images/parameters.png',
      ),
      "route": "parameters"
    },
    {
      "image": AssetImage(
        'images/deconnexion.png',
      ),
      "route": "login"
    },
  ];
}
