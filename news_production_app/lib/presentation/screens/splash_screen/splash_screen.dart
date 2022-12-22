import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:news_production_app/core/constants/constants.dart' as constants;
import 'package:news_production_app/presentation/styles/styles.dart' as styles;
import 'package:news_production_app/presentation/screens/splash_screen/widgets/custom_bottom.dart';
import 'package:news_production_app/presentation/screens/splash_screen/widgets/list_countries.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenUtil().setVerticalSpacing(10),
              const _TitleSplash(),
              Divider(color: constants.buttonColor),
              ScreenUtil().setVerticalSpacing(10),
              ListCountries(),
              ScreenUtil().setVerticalSpacing(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [CustomButton()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TitleSplash extends StatelessWidget {
  const _TitleSplash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(constants.splashScreenTitle, style: styles.getTitleStyle()),
        const Icon(Icons.flutter_dash, size: 50),
      ],
    );
  }
}
