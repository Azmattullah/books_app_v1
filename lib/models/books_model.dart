
class BookModel {
  String? id;
  String? title;
  String? description;
  double? rating;
  int? pages;
  String? language;
  String? audioLenght;
  String? bookUrl;
  String? audioUrl;
  String? category;
  int? price;
  int? numberOfRating;

  BookModel({this.id, this.title, this.description, this.rating, this.pages, this.language, this.audioLenght, this.bookUrl, this.audioUrl, this.category, this.price, this.numberOfRating});

  BookModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["rating"] is double) {
      rating = json["rating"];
    }
    if(json["pages"] is int) {
      pages = json["pages"];
    }
    if(json["language"] is String) {
      language = json["language"];
    }
    if(json["audioLenght"] is String) {
      audioLenght = json["audioLenght"];
    }
    if(json["bookUrl"] is String) {
      bookUrl = json["bookUrl"];
    }
    if(json["audioUrl"] is String) {
      audioUrl = json["audioUrl"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["price"] is int) {
      price = json["price"];
    }
    if(json["numberOfRating"] is int) {
      numberOfRating = json["numberOfRating"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["rating"] = rating;
    _data["pages"] = pages;
    _data["language"] = language;
    _data["audioLenght"] = audioLenght;
    _data["bookUrl"] = bookUrl;
    _data["audioUrl"] = audioUrl;
    _data["category"] = category;
    _data["price"] = price;
    _data["numberOfRating"] = numberOfRating;
    return _data;
  }
}