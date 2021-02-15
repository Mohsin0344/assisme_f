import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class DashBoardProfileEmployee extends StatefulWidget {
  @override
  _DashBoardProfileEmployeeState createState() => _DashBoardProfileEmployeeState();
}

class _DashBoardProfileEmployeeState extends State<DashBoardProfileEmployee> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var text = SizeConfig.textMultiplier;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff55534D),
      height: SizeConfig.heightMultiplier,
      child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 2,
                  right: SizeConfig.widthMultiplier * 3,
                  bottom:SizeConfig.heightMultiplier * 3,
                ),
                height: SizeConfig.heightMultiplier * 29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(42),
                      bottomRight: Radius.circular(42)
                  ),
                  color: Color(0xff393733),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('images/options dots.png',
                          height: SizeConfig.heightMultiplier * 2,
                          width: SizeConfig.widthMultiplier * 8,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/ellipse.png')
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'James A.',
                          style: GoogleFonts.montserrat(
                              color: Color(0xffE8E4E4),
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.textMultiplier * 2.8
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Employee',
                          style: GoogleFonts.montserrat(
                              color: Color(0xffFBB034),
                              fontSize: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     child: Text(
                    //       'CEO At Redmango',
                    //       style: GoogleFonts.montserrat(
                    //           color: Color(0xffFFCF80),
                    //           fontWeight: FontWeight.w500
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.only(
                    top: height * 2,
                    left: width * 6,
                    right: width * 6
                  ),
                  children: [
                    Container(
                      height: height * 3,
                      child: Row(
                        children: [
                          // Expanded(
                          //   child: Container(
                          //     alignment: Alignment.centerLeft,
                          //     child: Image.asset('images/Icon simple-probot.png',color: Colors.white,),
                          //   ),
                          // ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Jobs Applied',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: text * 2.5
                                ) ,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Divider(
                        color: Colors.grey,
                        height: height * 2,
                        thickness: text * 0.2,
                        endIndent: 180,
                      ),
                    ),
                    Container(
                      height: height * 32,
                      margin: EdgeInsets.only(
                          top: height
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, index){
                          return Container(
                            height: height * 32,
                            width: width * 41,
                            margin: EdgeInsets.only(
                                left: width * 2
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('images/Joseph.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                        height: height * 2
                    ),
                    Container(
                      height: height * 3,
                      child: Row(
                        children: [
                          // Expanded(
                          //   child: Container(
                          //     alignment: Alignment.centerLeft,
                          //     child: Image.asset('images/Icon feather-shopping-cart.png',color: Colors.white,),
                          //   ),
                          // ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Pre-Recorded Videos',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: text * 2.5
                                ) ,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Divider(
                        color: Colors.grey,
                        height: height * 2,
                        thickness: text * 0.2,
                        endIndent: 140,
                      ),
                    ),
                    Container(
                      height: height * 32,
                      margin: EdgeInsets.only(
                          top: height
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (BuildContext context, index){
                          return Container(
                            height: height * 32,
                            width: width * 41,
                            margin: EdgeInsets.only(
                                left: width * 2
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('images/Joseph.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]
      ),
    );
  }
}