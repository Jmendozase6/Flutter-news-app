import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_production_app/presentation/common_widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomIcon(icon: FontAwesomeIcons.bars),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomIcon(icon: FontAwesomeIcons.bell),
            ScreenUtil().setHorizontalSpacing(10),
            const CustomIcon(icon: FontAwesomeIcons.user),
          ],
        )
      ],
    );
  }
}
