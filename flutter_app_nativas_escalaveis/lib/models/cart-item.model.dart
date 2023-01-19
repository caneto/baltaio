// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CartItemModel {
  String id;
  String title;
  int quantity;
  double price;
  String image;

  CartItemModel(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.price,
      required this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'quantity': quantity,
      'price': price,
      'image': image,
    };
  }

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
      id: map['id'] != null ? map["id"] ?? '' as String : null,
      title: map['title'] != null ? map["title"] ?? '' as String : null,
      quantity: (map["quantity"] ?? 0) as int,
      price: map['price'] != null ? map["price"] ?? 0.0 as double : null,
      image: map['image'] != null ? map["image"] ?? '' as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItemModel.fromJson(String source) =>
      CartItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CartItemModel(id: $id, title: $title, quantity: $quantity, price: $price, image: $image)';
  }
}
