import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_production_app/data/models/models.dart';

const String _urlNews = 'https://newsapi.org/v2';
const String _apiKey = '9fb0f826564741d6baa70755ee32c98b';

class NewsProvider extends ChangeNotifier {
  // List Save headlines
  List<Article> headlines = [];
  final String _selectedCategory = 'business';

  // Categories list
  List<Category> categories = [
    Category(FontAwesomeIcons.building, 'business'),
    Category(FontAwesomeIcons.tv, 'entertainment'),
    Category(FontAwesomeIcons.addressCard, 'general'),
    Category(FontAwesomeIcons.headSideVirus, 'health'),
    Category(FontAwesomeIcons.vials, 'science'),
    Category(FontAwesomeIcons.volleyball, 'sports'),
    Category(FontAwesomeIcons.memory, 'technology'),
  ];
}
