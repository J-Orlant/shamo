import 'package:flutter/cupertino.dart';
import 'package:shamo/models/product_model.dart';

class WishListProvider with ChangeNotifier {
  List<ProductModel> _wishList = [];

  List<ProductModel> get wishList => _wishList;

  set wishList(List<ProductModel> wishlist) {
    _wishList = wishlist;
    notifyListeners();
  }

  setProduct(ProductModel product) {
    if (!isWishList(product)) {
      _wishList.add(product);
    } else {
      _wishList.removeWhere((element) => element.id == product.id);
    }
    notifyListeners();
  }

  isWishList(ProductModel product) {
    if (_wishList.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
