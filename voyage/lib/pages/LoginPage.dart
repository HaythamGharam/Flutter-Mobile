// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, use_build_context_synchronously, prefer_is_not_empty

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController txt_login = TextEditingController();
  TextEditingController txt_password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Se Connecter")),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: txt_login,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Nom d\'utilisateur',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir votre nom d\'utilisateur';
                          }
                          return null;
                        },
                      )),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: txt_password,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir votre mot de passe';
                          }
                          return null;
                        },
                      )),
                  Container(
                      child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _onLogin(context);
                      }
                    },
                    child: Text("Se connecter"),
                  )),
                  Container(
                      child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/inscription");
                    },
                    child: Text("Vous n'avez pas de compte?"),
                  ))
                ],
              )),
        ],
      ),
    );
  }

  Future<void> _onLogin(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    String login = prefs.getString('login') ?? '';
    String password = prefs.getString('password') ?? '';
    print(txt_password.text);
    if (txt_login.text == login && txt_password.text == password) {
      prefs.setBool("connecte", true);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    } else {
      const snackbar =
          SnackBar(content: Text('Verifier votre ID et Mot de Passe'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
