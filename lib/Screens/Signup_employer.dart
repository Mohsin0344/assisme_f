import 'package:assisme/Screens/SignInScreen.dart';
import 'package:assisme/Screens/SignUpEmployer_final.dart';
import 'package:assisme/Screens/Signup_Category.dart';
import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen_employer extends StatefulWidget {
  @override
  _SignupScreen_employerState createState() => _SignupScreen_employerState();
}

class _SignupScreen_employerState extends State<SignupScreen_employer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                  width: SizeConfig.widthMultiplier * 200,
                  height: SizeConfig.heightMultiplier * 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xffFFB843),
                        const Color(0xffF3CE69),
                      ], // red to yellow// repeats the gradient over the canvas
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          width: SizeConfig.widthMultiplier*10,
                          height: SizeConfig.heightMultiplier*10,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(
                                Icons.arrow_back
                            ),
                          ),

                        ),

                        Container(
                          // color: Colors.red,
                          width: SizeConfig.widthMultiplier*30,
                          height: SizeConfig.heightMultiplier*10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Back",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF393733)
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 9),
                decoration: new BoxDecoration(
                  color: Color(0xFF393733),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  ),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      accentColor: Color(0xFFffFBB034)
                  ),
                  child: ListView(
                    padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 8,
                        right: SizeConfig.widthMultiplier * 8,
                        top: SizeConfig.heightMultiplier * 13
                    ),
                    children: [
                      Text(
                        "Sign Up",
                        style: GoogleFonts.robotoMono(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      textField("Company Name"),
                      SizedBox(
                        height: 10,
                      ),
                      textField("Position Hiring for"),
                      SizedBox(
                        height: 10,
                      ),
                      textField("Email"),
                      SizedBox(
                        height: 10,
                      ),
                      textField("Mobile no"),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 10,
                            right: SizeConfig.widthMultiplier * 10,
                            top: SizeConfig.heightMultiplier * 5),
                        child: Container(
                          height: SizeConfig.heightMultiplier * 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xffFFDA75),
                                const Color(0xffFBB034),
                              ], // red to yellow// repeats the gradient over the canvas
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpEmployer_final()));
                                },
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: GoogleFonts.robotoMono(fontSize: 20),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:SizeConfig.heightMultiplier*3, bottom: SizeConfig.heightMultiplier*2),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget textField(String text) {
    return Container(
      width: SizeConfig.widthMultiplier * 200,
      height: SizeConfig.heightMultiplier * 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xffF2EFEF),
            const Color(0xffC5C3C3),
          ],
          // red to yellow// repeats the gradient over the canvas
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Row(
          children: [
            Icon(Icons.email),
            VerticalDivider(
              width: 10,
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            Expanded(
              child: TextFormField(
                textAlign: TextAlign.values[4],
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: GoogleFonts.robotoMono(color: Colors.black),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class design extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.quadraticBezierTo(size.width * 0.97, size.height * 0.70,
        size.width * 0.85, size.height * 0.70);
    path_0.cubicTo(size.width * 0.66, size.height * 0.69, size.width * 0.34,
        size.height * 0.69, size.width * 0.15, size.height * 0.70);
    path_0.quadraticBezierTo(
        size.width * 0.03, size.height * 0.70, 0, size.height);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
