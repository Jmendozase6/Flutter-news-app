import 'package:flutter/material.dart';
import 'package:news_production_app/presentation/screens/home_screen/widgets/search_controller.dart';
import 'package:provider/provider.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_production_app/core/constants/constants.dart';
import 'package:news_production_app/data/data_providers/country_provider.dart';
import 'package:news_production_app/presentation/screens/home_screen/widgets/custom_app_bar.dart';
import 'package:news_production_app/presentation/styles/styles.dart' as styles;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.country});

  static const String routeName = '/home';
  final String? country;

  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Appbar
              const CustomAppBar(),
              //Title & subtitle
              ScreenUtil().setVerticalSpacing(20),
              Text('Bienvenido', style: styles.getTitleStyle()),
              Text(
                'Está viendo noticias de ${countryProvider.selectedCountry}.',
                style: styles.getsubTitleStyle(),
              ),
              ScreenUtil().setVerticalSpacing(20),
              // Search Bar
              Container(
                height: 60.h,
                width: 0.9.sw,
                decoration: styles.roundedContainer(),
                child: Row(
                  children: [
                    ScreenUtil().setHorizontalSpacing(20),
                    Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: subTitleColor,
                    ),
                    ScreenUtil().setHorizontalSpacing(20),
                    SizedBox(
                      height: 70.h,
                      width: 0.7.sw,
                      child: TextFormField(
                        controller: SearchController().searchController,
                        decoration: const InputDecoration(
                          hintText: 'Search articles...',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
