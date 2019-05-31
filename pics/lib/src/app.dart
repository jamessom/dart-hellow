import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

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
  List<ImageModel> images = [];

  void fetchImage() async {
    counter ++;
    var res = await get('https://jsonplaceholder.typicode.com/photos/${counter}');
    var imageModell = ImageModel.fromJson(json.decode(res.body));
    setState(() => images.add(imageModell));
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see images"),
        ),
        body: Text('${counter}'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),


      // Trick if emulator is other language
      // locale: const Locale('en', 'US'),
      // supportedLocales: const <Locale>[Locale('en', 'US')],
      // localeResolutionCallback: (x, y) => const Locale('en', 'US'),
    );
  }
}