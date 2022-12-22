import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_production_app/data/data_providers/country_provider.dart';
import 'package:news_production_app/presentation/router/app_router.dart';

import 'package:news_production_app/presentation/screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountryProvider()),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(445, 975),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News App',
            initialRoute: SplashScreen.routeName,
            routes: routes,
            theme: ThemeData(fontFamily: 'Poppins'),
          );
        },
      ),
    );
  }
}
