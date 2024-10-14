class Rating {
  String? userId;
  double? rating;

  Rating({this.userId, this.rating});

  Rating.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    rating = json['rating'].toDouble() ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['rating'] = rating;
    return data;
  }
}
