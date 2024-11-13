import 'package:flutter/material.dart';

class AdminAuthProvider with ChangeNotifier {
  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<bool> login(String email, String password) async {
    try {
      _isLoading = true;
      notifyListeners();

      // Simulate an API call
      await Future.delayed(const Duration(seconds: 2));

      if (email == 'admin@example.com' && password == 'admin123') {
        _error = null;
        return true; // Successful login
      } else {
        _error = 'Invalid email or password';
        return false; // Failed login
      }
    } catch (e) {
      _error = 'An error occurred';
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
