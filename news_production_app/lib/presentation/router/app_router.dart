import 'package:flutter/material.dart';
import 'package:news_production_app/presentation/screens/screens.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
};
