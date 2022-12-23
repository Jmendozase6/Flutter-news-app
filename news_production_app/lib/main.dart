import 'package:flutter/material.dart';
import 'package:news_production_app/data/data_providers/filter_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:news_production_app/data/data_providers/data_providers.dart';
import 'package:news_production_app/presentation/router/app_router.dart';
import 'package:news_production_app/presentation/screens/screens.dart';
import 'presentation/screens/home_screen/widgets/search_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => FilterProvider()),
        ChangeNotifierProvider(create: (_) => CountryProvider()),
        ChangeNotifierProvider(create: (_) => SearchController()),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(445, 975),
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'News App',
            initialRoute: HomeScreen.routeName,
            routes: routes,
            theme: ThemeData(
              fontFamily: 'Poppins',
            ),
          );
        },
      ),
    );
  }
}
