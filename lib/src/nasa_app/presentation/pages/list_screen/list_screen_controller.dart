import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../data/dataProviders/apod_provider.dart';
import '../../../data/mock_data/list_screen_mock.dart';
import '../../../data/models/apod_model.dart';
import '../../../data/repositories/apod_api.dart';

class ListScreenController with ChangeNotifier {
  late Dio dio;
  late ApodAPI _apodAPI;
  late ApodDataProvider _apodDataProvider;

  final List<Apod> _apodList = [];
  List<Apod> get apodList => _apodList;

  // pour savoir si on peut aller chercher des apods ou attendre que la requete en cours termine
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  // on introduit la pagination pour afficher des apods au fur et a mesur q'on scrolle
  int page = 1;

  //Scroll listener
  bool hasMoreData = true;
  ScrollController scrollController = ScrollController();
  double scrollThreshold = 200.0;

  ListScreenController() {
    dio = Dio();
    _apodAPI = ApodAPI(dio);
    _apodDataProvider = ApodDataProvider(_apodAPI);
  }

  void initialize() {
    // (Optionel) Initialiser la liste des apods
    // _apodList.clear()
    fetch();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          hasMoreData &&
          !_isLoading) {
        fetch();
      }
    });
  }

  @override
  dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void goToDetailsScreen(BuildContext context, Apod apod) {
    Navigator.pushNamed(
      context,
      '/details',
      arguments: apod,
    );
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
    DateTime startDate = DateTime.now().subtract(Duration(days: 20 * page));
    DateTime endDate = DateTime.now().subtract(Duration(days: 20 * (page - 1)));

    try {
      // Si une requete est en cours ou pas de data a afficher retourner immediatement
      if (!hasMoreData || _isLoading) return;

      // Nouvelle requette
      _isLoading = true;
      notifyListenersWithDelay();

      List<Apod> newApodList =
          await _apodDataProvider.getRangeOfApod(startDate, endDate);
      if (newApodList.isEmpty) {
        hasMoreData = false;
      } else {
        _apodList.addAll(newApodList);
        page++;
      }

      _isLoading = false;
      notifyListenersWithDelay();
    } catch (e) {
      // On s'occupe des erreurs ici
    }
  }

  void notifyListenersWithDelay() {
    Future.delayed(Duration.zero, () {
      notifyListeners();
    });
  }
}
