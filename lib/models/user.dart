class User {
  String? name;
  String? email;
  String? password;
  String? address;
  String? type;
  String? token;
  String? sId;

  int? iV;
  List<dynamic>? cart;

  User({
    this.name,
    this.email,
    this.password,
    this.address,
    this.type,
    this.token = '',
    this.sId,
    this.iV,
    this.cart,
  });

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    address = json['address'];
    type = json['type'];
    token = json['token'];
    sId = json['_id'];

    iV = json['__v'];
    cart = List<Map<String, dynamic>>.from(
      json['cart'].map(
        (x) => Map<String, dynamic>.from(x),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['address'] = address;
    data['type'] = type;
    data['token'] = token;
    data['cart'] = cart;

    data['_id'] = sId;
    data['__v'] = iV;
    return data;
  }
}
