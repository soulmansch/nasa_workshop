import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text("ListScreen"),
          )
        ],
      ),
    );
  }
}
