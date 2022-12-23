import 'package:flutter/material.dart';
import 'package:news_production_app/data/models/models.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.article});

  static const String routeName = '/details';
  final Article? article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(article!.title),
      ),
    );
  }
}
