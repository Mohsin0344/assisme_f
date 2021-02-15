import 'package:assisme/ScreensEmployee/SelectVideoTypeEmployee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class HomePageEmployee extends StatefulWidget {
  @override
  _HomePageEmployeeState createState() => _HomePageEmployeeState();
}

class _HomePageEmployeeState extends State<HomePageEmployee> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var text = SizeConfig.textMultiplier;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Joseph.png'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: height * 2,
                bottom: height * 2,
                left: width * 2,
                right: width * 2
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Software Engineer',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: text * 3
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '153, Redmango',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: text * 2
                                ),
                              ),
                            )
                          ),
                          Expanded(
                              child: Container(
                                // color: Colors.red,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '23F Street # 3, CA',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: text * 2
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: height * 3,
                        left: width *2,
                        right: width * 2,
                        bottom: height * 3
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: height
                        ),
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectVideoTypeEmployee()));
                            },
                            child: Image.asset('images/apply.png')),
                      ),
                    ),
                  )
                ]
              ),
            ),
          )
        ],
      )
    );
  }
}
