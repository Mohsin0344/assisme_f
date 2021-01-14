import 'package:assisme/Screens/ConversationEmployer.dart';
import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MessagesEmployer extends StatefulWidget {
  @override
  _MessagesEmployerState createState() => _MessagesEmployerState();
}

class _MessagesEmployerState extends State<MessagesEmployer> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var text = SizeConfig.textMultiplier;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Color(0xff55534D),
      ),
      child: Column(
        children: [
          //** HEADER SECTION **//
          Container(
            height: height * 12,
            decoration: BoxDecoration(
                color: Color(0xff393733),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000),
                  blurRadius: 40,
                  offset: Offset(0,4)
                )
              ]
            ),
            child: Column(
              children: [
                //** Header Section **//
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: width * 6
                    ),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset('images/options dots.png',
                      width: width * 8,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      child: Text(
                        'Messages',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: text * 4
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
          //**  Messages List ** //
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: height * 4,
                left: width * 2,
                right: width * 2
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ConversationEmployer()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: height * 2,
                      bottom: height * 2,

                    ),
                    margin: EdgeInsets.only(
                      bottom: height
                    ),
                    height: height * 14,
                    decoration: BoxDecoration(
                      color: Color(0xff393733),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/ellipse.png'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: width * 5
                            ),
                            child: Column(
                              children: [
                                //** Name of person who messaged **//
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'James A.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: text * 3,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ),
                                //** MESSAGE **//
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Are you up for an interview?',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: text * 1.5,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          )
                        ),
                        Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  //** TIME **//
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        '12:01 AM',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: text * 1.5,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                  //** MESSAGE QUANTITY **//
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        top: height,
                                        bottom: height,
                                        left: width,
                                        right: width
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle
                                        ),
                                        child: Text(
                                          '3',
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
