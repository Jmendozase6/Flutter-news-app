import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_production_app/presentation/screens/screens.dart';
import 'package:news_production_app/presentation/styles/styles.dart' as styles;

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: width ?? 390.w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, HomeScreen.routeName, (route) => false);
        },
        style: styles.getRoundedButtonStyle(),
        child: Text('Seleccionar', style: styles.getButtonTextStyle()),
      ),
    );
  }
}
