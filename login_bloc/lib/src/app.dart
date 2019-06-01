import 'package:flutter/material.dart';

class App extends StatelessWidget {
  build(context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}