class ImageModel {
  int id;
  String url;

  ImageModel({this.id, this.url});

  ImageModel.fromJson(json) {
    id = json['id'];
    url = json['url'];
  }
}