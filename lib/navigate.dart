import 'package:flutter/material.dart';

class Navigate {
  static Future<void> push(BuildContext context, Widget page) async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static Future<void> pushReplacement(BuildContext context, Widget page) async {
    await Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static Future<void> pushAndRemoveUntil(
      BuildContext context, Widget page) async {
    await Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
