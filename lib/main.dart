
import 'package:assisme/Screens/Explore_Employer_Screen.dart';
import 'package:assisme/Screens/HomeScreenNavbar.dart';
import 'package:assisme/Screens/SplashScreen.dart';
import 'package:assisme/Screens/steepper.dart';
import 'package:flutter/material.dart';
import 'package:assisme/size_config.dart';
import 'styling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Learning Platform Application',
              theme: AppTheme.lightTheme,
              home: IconStepperDemo(),
            );
          },
        );
      },
    );
  }
}
