import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../data/dataProviders/apod_provider.dart';
import '../../data/mock_data/list_screen_mock.dart';
import '../../data/models/apod_model.dart';
import '../../data/repositories/apod_api.dart';

class ListScreenController with ChangeNotifier {
  late Dio dio;
  late ApodAPI _apodAPI;
  late ApodDataProvider _apodDataProvider;

  List<Apod> _apodList = [];
  List<Apod> get apodList => _apodList;

  //Initialiser le data provider
  ListScreenController() {
    dio = Dio();
    _apodAPI = ApodAPI(dio);
    _apodDataProvider = ApodDataProvider(_apodAPI);
  }

  List<Widget> mockData() {
    return listScreenMock.map((apod) {
      return ListTile(
        title: Text(apod.title),
        trailing: Text(apod.formattedDate),
        onTap: () {},
      );
    }).toList();
  }

  // Appel a l'API
  Future<void> fetch() async {
    DateTime startDate = DateTime.now().subtract(const Duration(days: 30));
    DateTime endDate = DateTime.now();

    try {
      List<Apod> apodList =
          await _apodDataProvider.getRangeOfApod(startDate, endDate);
      _apodList = apodList;
      notifyListeners(); // Notifier les listener
    } catch (e) {
      // On s'occupe des erreurs ici
    }
  }
}
