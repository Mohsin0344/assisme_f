import 'package:assisme/Screens/RecordCameraEmployer.dart';
import 'package:assisme/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:assisme/size_config.dart';
import 'styling.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return SplashScreen();

          },
        );
      },
    );
  }
}