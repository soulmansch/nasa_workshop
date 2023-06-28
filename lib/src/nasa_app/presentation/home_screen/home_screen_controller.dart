import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../list_screen/list_screen_controller.dart';
import '../list_screen/list_screen_view.dart';

class HomeScreenController {
  void goToListScreen(BuildContext context) {
    Provider.of<ListScreenController>(context, listen: false).fetch();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ListScreen()),
    );
  }
}
