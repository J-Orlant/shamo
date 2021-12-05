import 'package:shamo/models/product_model.dart';

class CartModel {
  int? id;
  ProductModel? product;
  int quantity = 1;

  CartModel(
    this.id,
    this.product,
    this.quantity,
  );

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = ProductModel.fromJson(json['product']);
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product!.toJson(),
      'quantity': quantity,
    };
  }

  getTotaPrice() {
    return product!.price!.toDouble() * quantity;
  }
}
