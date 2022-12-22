import 'package:flutter/material.dart';
import 'package:news_production_app/presentation/router/app_router.dart';

import 'package:news_production_app/presentation/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
