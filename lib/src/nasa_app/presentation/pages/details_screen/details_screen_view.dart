import 'package:flutter/material.dart';
import '../../screen/empty_page.dart';

import '../../../data/models/apod_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apod = ModalRoute.of(context)!.settings.arguments as Apod?;

    if (apod == null) {
      return const EmptyScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(apod.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(apod.title),
            Text(apod.explanation),
          ],
        ),
      ),
    );
  }
}
