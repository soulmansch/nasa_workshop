import 'package:intl/intl.dart';

import '../../constants/enums.dart';

class Apod {
  String? copyRight;
  DateTime date;
  String explanation;
  String? hdurl;
  MediaType mediaType;
  String title;
  String url;
  String? thumbnailUrl;
  Apod({
    this.copyRight,
    required this.date,
    required this.explanation,
    this.hdurl,
    required this.mediaType,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });
  String get formattedDate {
    final formatter = DateFormat('dd-MM-yyyy');
    return formatter.format(date);
  }
}
