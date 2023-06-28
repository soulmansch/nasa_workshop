import 'package:flutter/material.dart';

import '../../data/mock_data/list_screen_mock.dart';

class ListScreenController {
  List<Widget> mockData() {
    return listScreenMock.map((apod) {
      return ListTile(
        title: Text(apod.title),
        trailing: Text(apod.formattedDate),
        onTap: () {},
      );
    }).toList();
  }
}
