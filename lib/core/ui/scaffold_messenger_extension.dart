import 'package:flutter/material.dart';

/// ScaffoldMessengerExtension which takes build context for functions
extension ScaffoldMessengerExtension on BuildContext {
  /// error snackbar widget
  void showErrorSnackbar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
