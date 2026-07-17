import 'package:flutter/cupertino.dart';

import '../models/user_model.dart';

class UserViewModel extends ChangeNotifier {
  UserModel? _user;
  bool _isLoading = false;
  String? _message;

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  String? get message => _message;

  Future<bool> register(String name, String email, String password) async {
    _isLoading = true;
    try {
      _user = UserModel(
        id: DateTime.now().toString(),
        name: name,
        email: email,
        password: password
      );
      _message = "Register Success";
      return true;
    } catch (error) {
      _isLoading = false;
      _message = error.toString();
      return false;
    }
  }

  Future<bool> login(String email, String password) async {
    _isLoading = true;

    try {
      if (email != _user?.email || password != _user?.password) {
        print("ini email narik${_user?.email}");
        print("ini password narik${_user?.password}");
        print("ini emaul input$email");
        print("ini password input $password");
        _isLoading = false;
        _message = "Login Failed";
        return false;
      } else {
        _isLoading = false;
        _message = "Login Success";
        return true;
      }
    } catch (error) {
      _isLoading = false;
      _message = error.toString();
      return false;
    }
  }
}