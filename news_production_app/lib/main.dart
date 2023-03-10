import 'package:flutter/material.dart';
import 'package:news_production_app/data/data_providers/filter_provider.dart';
import 'package:news_production_app/logic/user_preferences.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:news_production_app/data/data_providers/data_providers.dart';
import 'package:news_production_app/presentation/router/app_router.dart';
import 'package:news_production_app/presentation/screens/screens.dart';
import 'presentation/screens/home_screen/widgets/search_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => FilterProvider()),
        ChangeNotifierProvider(create: (_) => CountryProvider()),
        ChangeNotifierProvider(create: (_) => SearchController()),
      ],
      child: MyApp(
          initialRoute: UserPreferences.isShowedSplash
              ? HomeScreen.routeName
              : SplashScreen.routeName),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialRoute});

  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(445, 975),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News App',
          initialRoute: initialRoute,
          routes: routes,
          theme: ThemeData(
            fontFamily: 'Poppins',
          ),
        );
      },
    );
  }
}
