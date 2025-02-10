import 'package:flutter/material.dart';

class JSnackbar {
  static show(context, text) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: Duration(seconds: 3),
      ),
    );
  }
}
