import 'package:flutter/material.dart';

class HomeScreenController {
  void goToListScreen(BuildContext context) {
    Navigator.pushNamed(context, '/list');
  }
}
