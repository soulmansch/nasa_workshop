import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_screen_controller.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListScreenController>(
        builder: (context, screenController, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("ListScreen"),
        ),
        body: screenController.apodList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: screenController.apodList.map((apod) {
                  return ListTile(
                    title: Text(apod.title),
                    trailing: Text(apod.formattedDate),
                    onTap: () {},
                  );
                }).toList(),
              ),
      );
    });
  }
}
