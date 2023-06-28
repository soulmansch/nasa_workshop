import 'package:flutter/material.dart';
import 'list_screen_controller.dart';

class ListScreen extends StatelessWidget {
  final ListScreenController listScreenController = ListScreenController();
  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListScreen"),
      ),
      body: ListView(
        children: listScreenController.mockData(),
      ),
    );
  }
}
