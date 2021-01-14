import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore_Employer_Screen extends StatefulWidget {
  @override
  _Explore_Employer_ScreenState createState() =>
      _Explore_Employer_ScreenState();
}

class _Explore_Employer_ScreenState extends State<Explore_Employer_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xff55534D),
        body: Container(
          width: SizeConfig.heightMultiplier * 100,
          height: SizeConfig.widthMultiplier * 200,
          child: Column(
            children: [
              Container(
                  width: SizeConfig.widthMultiplier * 200,
                  height: SizeConfig.heightMultiplier * 20,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 26,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    color: Color(0xFF393733),
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 5,
                        right: SizeConfig.widthMultiplier * 5),
                    child: Column(
                      children: [
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Text(
                          "Explore",
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig.textMultiplier * 5,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Container(
                            width: SizeConfig.widthMultiplier * 200,
                            height: SizeConfig.heightMultiplier * 7,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E4E4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: new ListTile(
                              leading: new Icon(Icons.search),
                              title: new TextField(
                                // controller: controller,
                                decoration: new InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none),
                                //onChanged: onSearchTextChanged,
                              ),
                              trailing: new IconButton(
                                icon: new Icon(Icons.cancel),
                                onPressed: () {},
                              ),
                            ))
                      ],
                    ),
                  )),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.heightMultiplier * 10),
                  width: SizeConfig.widthMultiplier * 200,
                  height: SizeConfig.heightMultiplier * 100,
                  //color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 7,
                        right: SizeConfig.widthMultiplier * 7,
                        bottom: SizeConfig.heightMultiplier * 2),
                    child: ListView(
                      children: [
                        Text(
                          "Tech Employees",
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig.textMultiplier * 3,
                              color: Color(0xFFF2EFEF)),
                        ),
                        Divider(
                          height: 20,
                          indent: 0,
                          endIndent: SizeConfig.widthMultiplier * 18,
                          color: Color(0xffF2EFEF),
                        ),
                        Row(
                          children: [
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),

                            ///----------------
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),

                            ///----------------
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            )
                          ],
                        ),

                        ///----------------------
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        Text(
                          "Marketing Employees",
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig.textMultiplier * 3,
                              color: Color(0xFFF2EFEF)),
                        ),
                        Divider(
                          height: 20,
                          indent: 0,
                          endIndent: SizeConfig.widthMultiplier * 18,
                          color: Color(0xffF2EFEF),
                        ),
                        Row(
                          children: [
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),

                            ///----------------
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),

                            ///----------------
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            )
                          ],
                        ),

                        ///----------------------
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        Text(
                          "Designing Employess",
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig.textMultiplier * 3,
                              color: Color(0xFFF2EFEF)),
                        ),
                        Divider(
                          height: 20,
                          indent: 0,
                          endIndent: SizeConfig.widthMultiplier * 18,
                          color: Color(0xffF2EFEF),
                        ),
                        Row(
                          children: [
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),

                            ///----------------
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),

                            ///----------------
                            Container(
                              width: SizeConfig.heightMultiplier * 9,
                              height: SizeConfig.heightMultiplier * 9,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.0,
                                    color: const Color(0xFFF2EFEF),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(0, 3.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('images/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 3,
                            ),
                            Container(
                              width: SizeConfig.widthMultiplier * .8,
                              height: SizeConfig.heightMultiplier * 5,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
