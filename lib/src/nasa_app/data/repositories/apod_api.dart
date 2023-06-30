// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import '../models/apod_model.dart';

// Cette classe nous permet d'appeler l'API de la NASA
class ApodAPI {
  Dio dio;
  ApodAPI(this.dio) {
    // Cette partie est optionelle, mais j'ai remarque que des fois cette API prends beaucoup de temps
    dio.options.connectTimeout = const Duration(
        seconds: 30); // Définir le délai de connexion à 30 secondes
    dio.options.receiveTimeout = const Duration(
        seconds: 60); // Définir le délai de réception à 60 secondes
  }
  // Récupère une liste d'objets Apod sur une plage de dates
  Future<List<Apod>> getRangeOfApod(
      DateTime startDate, DateTime endDate) async {
    const String baseUrl = 'https://api.nasa.gov/planetary/apod';
    const String apiKey = 'VVVBilkv48NWkCisb8OohC12hF1utqqYbIsPk6Wn';

    String formattedStartDate = startDate.toIso8601String().substring(0, 10);
    String formattedEndDate = endDate.toIso8601String().substring(0, 10);

    try {
      Response response = await dio.get(baseUrl, queryParameters: {
        'api_key': apiKey,
        'start_date': formattedStartDate,
        'end_date': formattedEndDate,
      });

      print(response.data);

      List<Apod> apodList =
          (response.data as List).map((json) => Apod.fromJson(json)).toList();

      return apodList;
    } catch (error) {
      throw Exception('Échec de récupération des données APOD : $error');
    }
  }
}
