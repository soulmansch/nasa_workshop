import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/pages/details_screen/details_screen_view.dart';
import 'presentation/pages/home_screen/home_screen_view.dart';
import 'presentation/pages/list_screen/list_screen_controller.dart';
import 'presentation/pages/list_screen/list_screen_view.dart';

class NasaApp extends StatelessWidget {
  const NasaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListScreenController>(
      create: (_) => ListScreenController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nasa Workshop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/list': (context) => const ListScreen(),
          '/details': (context) => DetailsScreen(),
        },
      ),
    );
  }
}
