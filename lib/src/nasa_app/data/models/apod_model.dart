import 'package:intl/intl.dart';

import '../../constants/enums.dart';

// Modele des Apods
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

  factory Apod.fromJson(Map<String, dynamic> json) {
    return Apod(
      copyRight: json['copyright'],
      date: DateTime.parse(json['date'] ?? DateTime.now().toString()),
      explanation: json['explanation'] ?? "explanation",
      hdurl: json['hdurl'],
      mediaType:
          json['media_type'] == 'video' ? MediaType.video : MediaType.image,
      title: json['title'] ?? "title",
      url: json['url'] ?? "",
      thumbnailUrl: json['thumbnail_url'],
    );
  }
}
