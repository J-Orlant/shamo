import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shamo/models/cart_model.dart';

class TransactionService {
  String baseUrl = 'http://192.168.1.3:8000/api';

  Future<bool> checkOut({
    required String token,
    required List<CartModel> cart,
    required double totalPrice,
  }) async {
    var url = Uri.parse('$baseUrl/checkout');
    var headers = {
      'Content-type': 'application/json',
      'Authorization': token,
    };

    var body = jsonEncode(
      {
        'address': 'Marsemoon',
        'items': cart
            .map(
              (cart) => {
                'id': cart.product!.id,
                'quantity': cart.quantity,
              },
            )
            .toList(),
        'status': 'PENDING',
        'total_price': totalPrice,
        'shipping_price': '10',
      },
    );

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal Melakukan Checkout');
    }
  }
}
