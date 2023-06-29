import 'package:flutter/material.dart';
import 'package:nasa_workshop/src/nasa_app/presentation/pages/home_screen/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenController homeScreenController = HomeScreenController();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "/images/nasa_logo.jpeg",
                height: 200,
              ),
              const SizedBox(height: 20),
              MaterialButton(
                onPressed: () => homeScreenController.goToListScreen(context),
                child: const Text("Start"),
              )
            ],
          ),
        )
      ]),
    );
  }
}
