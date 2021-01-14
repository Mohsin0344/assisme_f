import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class ConversationEmployer extends StatefulWidget {
  @override
  _ConversationEmployerState createState() => _ConversationEmployerState();
}

class _ConversationEmployerState extends State<ConversationEmployer> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var text = SizeConfig.textMultiplier;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff55534D),
          child: Stack(
            children: [
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: height * 4
                    ),
                    height: height * 63,
                    child: ListView.builder(
                      padding: EdgeInsets.only(
                        top: height * 4
                      ),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, index){
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: height * 6,
                          child: Row(
                            children: [
                              Container(
                                height: height * 6,
                                width: height * 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'images/ellipse.png',
                                    ),
                                    fit: BoxFit.cover
                                  )
                                )
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                              color: Color(0xff393733),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(12),
                                                  bottomRight: Radius.circular(12),
                                                  bottomLeft: Radius.circular(12)
                                              )
                                          ),
                                          margin: EdgeInsets.only(
                                              left: width * 2,
                                              right: width * 8
                                          ),
                                          child: Text('Whats the update?',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white
                                            ),
                                          )
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: Container(
                                    //     alignment: Alignment.centerLeft,
                                    //     child: Text(
                                    //       '12:00 AM',
                                    //       style: GoogleFonts.montserrat(
                                    //         color: Colors.white
                                    //       ),
                                    //     ),
                                    //   ),
                                    // )
                                  ],
                                )
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: width * 2
                      ),
                      height: SizeConfig.isMobilePortrait? height * 18: height * 14,
                      decoration: BoxDecoration(
                          color: Color(0xff393733),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                          )
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                  top: SizeConfig.isMobilePortrait? height : height * 3,
                                  bottom: SizeConfig.isMobilePortrait? height : height * 3,
                                  left: SizeConfig.isMobilePortrait? width : width * 3,
                                  right: SizeConfig.isMobilePortrait? width : width * 3,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('images/ellipse.png'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              )
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.isMobilePortrait? height * 6: height * 4,
                                  bottom: SizeConfig.isMobilePortrait? height * 6.5: height * 4,
                                  left: SizeConfig.isMobilePortrait?width * 2 : 0
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'James A.',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xffF9F9F9),
                                            fontSize: text * 2.5
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'seen 12 hours ago',
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xffF9F9F9),
                                            fontWeight: FontWeight.w300,
                                            fontSize: text * 1.5
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter ,
                child: Container(
                  height: height * 15,
                 color: Color(0xff393733),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey,
                                        width: 1
                                    )
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: width * 4
                              ),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.white
                                ),
                                decoration: InputDecoration(
                                  filled: false,
                                  hintText: 'Type a messsage. .',
                                  hintStyle: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                        flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(
                                top: height ,
                                bottom: height,
                              left: width * 4
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    width: width * 8,
                                    alignment: Alignment.center,
                                    child: Image.asset('images/options dots.png',
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: width * 4
                                    ),
                                    width: width * 8,
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset('images/Icon ionic-md-photos.png'),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: width * 4
                                    ),
                                    width: width * 8,
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset('images/Icon awesome-camera.png'),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: height * 8,
                    width: height * 8,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffDC9B2E),
                          Color(0xffFFDA75)
                        ]
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                        child: Image.asset('images/Icon awesome-arrow-right.png'))
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}