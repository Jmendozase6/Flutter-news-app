import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_production_app/core/constants/constants.dart';
import 'package:news_production_app/data/data_providers/data_providers.dart';
import 'package:provider/provider.dart';

import 'package:news_production_app/data/models/article.dart';
import 'package:news_production_app/presentation/styles/styles.dart' as styles;

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static const String routeName = '/search';

  @override
  Widget build(BuildContext context) {
    final List<Article> news = Provider.of<NewsProvider>(context).byQuery;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Text('Resultados', style: styles.getTitleStyle()),
              Text('De su búsqueda', style: styles.getsubTitleStyle()),
              ScreenUtil().setVerticalSpacing(20),
              (news.isEmpty)
                  ? const Center(child: CupertinoActivityIndicator())
                  : SizedBox(
                      height: 0.8.sh,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: news.length,
                        itemBuilder: (_, index) => Card(
                          child: ListTile(
                            tileColor: componentColor,
                            leading: FadeInImage(
                              placeholder:
                                  const AssetImage('assets/images/giphy.gif'),
                              image: NetworkImage(news[index].urlToImage ?? ''),
                              fit: BoxFit.cover,
                              imageErrorBuilder: (_, __, ___) => const Image(
                                image: AssetImage('assets/images/no-image.png'),
                              ),
                            ),
                            title: Text(
                              news[index].title,
                              style: styles.getTitleStyle(fontSize: 13),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text('${news[index].publishedAt}',
                                style: styles.getsubTitleStyle()),
                          ),
                        ),
                        separatorBuilder: (_, __) => const Divider(),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
