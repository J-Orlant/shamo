import 'package:shamo/models/category_model.dart';
import 'package:shamo/models/gallery_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? tags;
  String? description;
  CategoryModel? category;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<GalleryModel>? galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.tags,
    required this.description,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    tags = json['tags'];
    description = json['description'];
    category = CategoryModel.fromJson(json['category']);
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    galleries = json['galleries']
        .map((gallery) => GalleryModel.fromJson(gallery))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'tags': tags,
      'description': description,
      'category': category!.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
      'galleries': galleries!.map((gallery) => gallery.toJson()).toList(),
    };
  }
}
