import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:news_production_app/data/data_providers/data_providers.dart';
import 'package:news_production_app/presentation/router/app_router.dart';
import 'package:news_production_app/presentation/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
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
            theme: ThemeData(
              // brightness: Brightness.dark,
              fontFamily: 'Poppins',
            ),
          );
        },
      ),
    );
  }
}
