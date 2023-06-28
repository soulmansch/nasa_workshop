import '../repositories/apod_api.dart';
import '../models/apod_model.dart';

class ApodDataProvider {
  final ApodAPI _apodDataSource;

  ApodDataProvider(this._apodDataSource);

  Future<List<Apod>> getRangeOfApod(DateTime startDate, DateTime endDate) {
    return _apodDataSource.getRangeOfApod(startDate, endDate);
  }
}
