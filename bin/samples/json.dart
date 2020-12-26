import 'dart:convert';
import 'imageModel.dart';

void main() {
  var rawJson = '{"id": 1, "url": "http://tes.com.bla"}';

  var parsedJson = json.decode(rawJson);
  var imageModel = new ImageModel.fromJson(parsedJson);

  print(imageModel);
}