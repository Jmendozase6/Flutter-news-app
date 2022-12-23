import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_production_app/core/constants/constants.dart';
import 'package:news_production_app/presentation/screens/home_screen/widgets/search_controller.dart';
import 'package:news_production_app/presentation/styles/styles.dart' as styles;

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              decoration: InputDecoration(
                hintText: 'Buscar noticias...',
                hintStyle: styles.getsubTitleStyle(),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              keyboardType: TextInputType.name,
            ),
          )
        ],
      ),
    );
  }
}
