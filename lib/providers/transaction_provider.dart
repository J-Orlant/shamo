import 'package:flutter/cupertino.dart';
import 'package:shamo/models/cart_model.dart';
import 'package:shamo/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  Future<bool> checkout({
    required String token,
    required List<CartModel> cart,
    required double totalPrice,
  }) async {
    try {
      if (await TransactionService().checkOut(
        token: token,
        cart: cart,
        totalPrice: totalPrice,
      )) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
