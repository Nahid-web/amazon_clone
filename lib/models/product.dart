/* class Product {
  Id? iId;
  String? name;
  String? description;
  List<String>? images;
  Quantity? quantity;
  Quantity? price;
  String? category;
  Quantity? qV;

  Product(
      {this.iId,
      this.name,
      this.description,
      this.images,
      this.quantity,
      this.price,
      this.category,
      this.qV});

  Product.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    name = json['name'];
    description = json['description'];
    images = json['images'].cast<String>();
    quantity = json['quantity'] != null
        ? new Quantity.fromJson(json['quantity'])
        : null;
    price = json['price'] != null ? new Quantity.fromJson(json['price']) : null;
    category = json['category'];
    qV = json['__v'] != null ? new Quantity.fromJson(json['__v']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId!.toJson();
    }
    data['name'] = this.name;
    data['description'] = this.description;
    data['images'] = this.images;
    if (this.quantity != null) {
      data['quantity'] = this.quantity!.toJson();
    }
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    data['category'] = this.category;
    if (this.qV != null) {
      data['__v'] = this.qV!.toJson();
    }
    return data;
  }
}

class Id {
  String? oid;

  Id({this.oid});

  Id.fromJson(Map<String, dynamic> json) {
    oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this.oid;
    return data;
  }
}

class Quantity {
  String? numberInt;

  Quantity({this.numberInt});

  Quantity.fromJson(Map<String, dynamic> json) {
    numberInt = json['$numberInt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$numberInt'] = this.numberInt;
    return data;
  }
}
 */




class Product {
  String? name;
  String? description;
  double? quantity;
  List<String>? images;
  String? category;
  double? price;
  String? id;

  Product(
      {this.name,
      this.description,
      this.quantity,
      this.images,
      this.category,
      this.price,
      this.id});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    quantity = json['quantity']?.toDouble() ?? 0.0;
    images = json['images'].cast<String>();
    category = json['category'];
    price = json['price']?.toDouble() ?? 0;
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['images'] = this.images;
    data['category'] = this.category;
    data['price'] = this.price;
    data['_id'] = this.id;
    return data;
  }
}
