import '../../models/apod_model.dart';

//Interface
abstract class ApodService {
  Future<List<Apod>> getRangeOfApod(DateTime startDate, DateTime endDate);
}
