class GaleryModel {
  int id;
  String url;

  GaleryModel({
    this.id,
    this.url,
  });

  GaleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
