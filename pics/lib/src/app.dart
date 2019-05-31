import 'package:flutter/material.dart';

// StatelessWidget => never contain its own data
// StatefulWidget => maintain some data source

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see images"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print('Hi there'),
        ),
      ),


      // Trick if emulator is other language
      // locale: const Locale('en', 'US'),
      // supportedLocales: const <Locale>[Locale('en', 'US')],
      // localeResolutionCallback: (x, y) => const Locale('en', 'US'),
    );
  }
}