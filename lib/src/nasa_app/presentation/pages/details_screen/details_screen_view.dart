import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../constants/enums.dart';
import '../../../data/models/apod_model.dart';
import '../../screens/empty_page.dart';
import 'detais_screen_controller.dart';

class DetailsScreen extends StatelessWidget {
  final DetailsScreenController detailsScreenController =
      DetailsScreenController();
  DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apod = ModalRoute.of(context)!.settings.arguments as Apod?;

    if (apod == null) {
      return const EmptyScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
                child: Center(
                  child: Stack(
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: apod.mediaType == MediaType.video
                              ? () =>
                                  detailsScreenController.playVideo(apod.url)
                              : null,
                          child: CachedNetworkImage(
                            imageUrl: apod.mediaType == MediaType.video
                                ? apod.thumbnailUrl ?? ""
                                : apod.url,
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 400,
                            fit: BoxFit.cover,
                            errorWidget: (_, __, ___) => Image.asset(
                              "/images/no_image.jpeg",
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 400,
                              fit: BoxFit.cover,
                            ),
                            placeholder: (_, __) => const Center(
                              child: SizedBox(
                                  width: 40,
                                  height: 40.0,
                                  child: CircularProgressIndicator()),
                            ),
                          ),
                        ),
                      ),
                      if (apod.mediaType == MediaType.video)
                        const Center(
                          child: Icon(
                            Icons.play_circle,
                            size: 80,
                            color: Colors.grey,
                          ),
                        )
                    ],
                  ),
                ),
              ),
              Text(
                apod.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              if (apod.copyRight != null) Text(apod.copyRight!),
              const SizedBox(height: 20),
              Text(apod.explanation),
            ],
          ),
        ),
      ),
    );
  }
}
