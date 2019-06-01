import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          // passwordField(),
          // submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'you@example.com'
      ),
    );
  }

  Widget passwordField() {}

  Widget submitButton() {}
}