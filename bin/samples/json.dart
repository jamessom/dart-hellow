import 'dart:convert';
import 'imageModel.dart';

void main() {
  var rawJson = '{"id": 1, "url": "http://tes.com.bla"}';

  var parsedJson = json.decode(rawJson);
  var imageModel = new ImageModel(
    id: parsedJson['id'], 
    url: parsedJson['url']
  );

  print(imageModel);
}