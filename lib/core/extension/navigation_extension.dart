import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  void navigateToPage(String page) {
    Navigator.pushNamed(this, page);
  }

  void navigateToAndReplacement(String page) {
    Navigator.pushReplacementNamed(this, page);
  }

  void navigateToAndRemoveUntil(String page) {
    Navigator.pushNamedAndRemoveUntil(this, page, (route) => false);
  }

  void pop() {
    Navigator.canPop(this);
  }
}
