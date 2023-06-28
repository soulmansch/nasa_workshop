// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import '../models/apod_model.dart';

//Cette classe va nous permettre d'appeler l'API de la Nasa
class ApodAPI {
  Dio dio;
  ApodAPI(this.dio);
  Future<List<Apod>> getRangeOfApod(
      DateTime startDate, DateTime endDate) async {
    Dio dio = Dio();
    const String baseUrl = 'https://api.nasa.gov/planetary/apod';
    const String apiKey = 'wFrEIfAKjYlWmhlLVvsLaGMVfXSKLd2ydKfWSis0';

    String formattedStartDate = startDate.toIso8601String().substring(0, 10);
    String formattedEndDate = endDate.toIso8601String().substring(0, 10);

    try {
      Response response = await dio.get(baseUrl, queryParameters: {
        'api_key': apiKey,
        'start_date': formattedStartDate,
        'end_date': formattedEndDate,
      });

      List<Apod> apodList =
          (response.data as List).map((json) => Apod.fromJson(json)).toList();

      return apodList;
    } catch (error) {
      throw Exception('Failed to fetch APOD data: $error');
    }
  }
}
