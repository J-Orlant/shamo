import 'package:flutter/cupertino.dart';
import 'package:shamo/models/user_model.dart';
import 'package:shamo/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _userModel;

  UserModel get user => _userModel;

  set user(UserModel user) {
    _userModel = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _userModel = user;

      return true;
    } catch (e) {
      print(e.toString());

      return false;
    }
  }
}
