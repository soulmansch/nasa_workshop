import '../../models/apod_model.dart';

abstract class ApodService {
  Future<List<Apod>> getRangeOfApod(DateTime startDate, DateTime endDate);
}
