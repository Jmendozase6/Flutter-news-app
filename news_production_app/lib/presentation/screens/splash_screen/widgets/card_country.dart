import 'package:flutter/material.dart';
import 'package:news_production_app/core/constants/constants.dart' as constants;
import 'package:news_production_app/data/data_providers/country_provider.dart';
import 'package:news_production_app/data/models/models.dart' show Country;
import 'package:news_production_app/presentation/styles/styles.dart' as styles;
import 'package:provider/provider.dart';

class CardCountry extends StatelessWidget {
  const CardCountry({
    Key? key,
    required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    final countryService = Provider.of<CountryProvider>(context);

    return GestureDetector(
      onTap: () {
        countryService.selectedCountry = country.name;
      },
      child: Card(
        shape: const StadiumBorder(),
        color: countryService.selectedCountry == country.name
            ? constants.buttonColor
            : Colors.white,
        child: ListTile(
          leading: Text(country.icon),
          title: Text(
            country.name,
            style: styles.getCountryTextStyle(
              countryService.selectedCountry == country.name
                  ? Colors.white
                  : constants.buttonColor,
            ),
          ),
        ),
      ),
    );
  }
}
