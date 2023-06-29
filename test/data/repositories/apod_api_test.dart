import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:nasa_workshop/src/nasa_app/data/models/apod_model.dart';
import 'package:nasa_workshop/src/nasa_app/data/repositories/apod_api.dart';

void main() {
  group('ApodAPI', () {
    late Dio dio;
    late ApodAPI apodAPI;

    setUp(() {
      dio = Dio(); // Créer une instance de Dio
      apodAPI =
          ApodAPI(dio); // Créer une instance de ApodAPI avec l'instance Dio
    });

    test('getRangeOfApod devrait retourner une liste d\'objets Apod', () async {
      // Définir les données de test
      DateTime startDate = DateTime(2023, 6, 1);
      DateTime endDate = DateTime(2023, 6, 5);

      // Appeler la méthode à tester
      List<Apod> apodList = await apodAPI.getRangeOfApod(startDate, endDate);

      // Effectuer des assertions pour valider les résultats
      expect(apodList.isNotEmpty, true); // Vérifier que la liste n'est pas vide
      expect(apodList.length,
          5); // Vérifier le nombre attendu d'objets dans la liste
      expect(apodList.first.runtimeType,
          Apod); // Vérifier que chaque élément est de type Apod
    });
  });
}
