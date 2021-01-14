import 'package:assisme/Screens/SignInScreen.dart';
import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF393733),
      body: Material(
          child: Container(
        width: SizeConfig.widthMultiplier * 200,
        height: SizeConfig.heightMultiplier * 100,
        color: Color(0xFF393733),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "tab to continue",
                  style: GoogleFonts.robotoMono(
                    fontSize: 15,
                    color: Color(0xFFE8E4E4),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      ),
    ),
    );
  }
}
