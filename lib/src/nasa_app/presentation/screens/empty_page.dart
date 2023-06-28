import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Pas de données disponibles'),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: const Text("Page d'accueil"),
            )
          ],
        ),
      ),
    );
  }
}
