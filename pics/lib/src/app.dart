import 'package:flutter/material.dart';

// StatelessWidget => never contain its own data
// this widget will have no instance variables that will change

// StatefulWidget => maintain some data source
// this widget will have instance variables that
// will change and widget needs to update itself
// on screen when the data changes

class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see images"),
        ),
        body: Text('${counter}'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => setState(() => counter += 1),
        ),
      ),


      // Trick if emulator is other language
      // locale: const Locale('en', 'US'),
      // supportedLocales: const <Locale>[Locale('en', 'US')],
      // localeResolutionCallback: (x, y) => const Locale('en', 'US'),
    );
  }
}