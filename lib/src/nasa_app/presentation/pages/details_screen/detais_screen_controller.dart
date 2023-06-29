import 'package:url_launcher/url_launcher_string.dart';

class DetailsScreenController {
  void playVideo(String url) async {
    launchUrlString(url).catchError((e) {
      // on peut s'occuper de l'erreur ici
      return true;
    });
  }
}
