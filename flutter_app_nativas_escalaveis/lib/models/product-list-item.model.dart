// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductListItemModel {
  String id;
  String title;
  String brand;
  String tag;
  double price;
  String image;

  ProductListItemModel({
    required this.id,
    required this.title,
    required this.brand,
    required this.tag,
    required this.price,
    required this.image,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'brand': brand,
      'tag': tag,
      'price': price,
      'image': image,
    };
  }

  factory ProductListItemModel.fromMap(Map<String, dynamic> map) {
    return ProductListItemModel(
      id: (map["id"] ?? '') as String,
      title: (map["title"] ?? '') as String,
      brand: (map["brand"] ?? '') as String,
      tag: (map["tag"] ?? '') as String,
      price: (map["price"] ?? 0.0) as double,
      image: (map["image"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductListItemModel.fromJson(String source) => ProductListItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }
