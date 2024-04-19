import 'package:flutter/material.dart';
import 'package:student_data/app_route/app_route.dart';
import 'package:student_data/header.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoute.splashScreen: (context) => const SplashScreen(),
        AppRoute.homePage: (context) => const HomePage(),
        AppRoute.detailsPage: (context) => const DetailsPage(),
      },
    );
  }
}
