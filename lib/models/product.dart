import 'package:amazon_clone/models/rating.dart';

class Product {
  String? name;
  String? description;
  double? quantity;
  List<String>? images;
  String? category;
  double? price;
  String? id;
  List<Rating>? rating;

  Product({
    this.name,
    this.description,
    this.quantity,
    this.images,
    this.category,
    this.price,
    this.id,
    this.rating,
  });

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    quantity = json['quantity']?.toDouble() ?? 0.0;
    images = json['images'].cast<String>();
    category = json['category'];
    price = json['price']?.toDouble() ?? 0;
    id = json['_id'];
    rating = json['ratings'] != null
        ? List<Rating>.from(
            json['ratings'].map(
              (x) => Rating.fromJson(x),
            ),
          )
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['quantity'] = quantity;
    data['images'] = images;
    data['category'] = category;
    data['price'] = price;
    data['_id'] = id;
    data['rating'] = rating;
    return data;
  }
}
