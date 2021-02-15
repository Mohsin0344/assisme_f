import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreEmployeeScreen extends StatefulWidget {
  @override
  _ExploreEmployeeScreenState createState() =>
      _ExploreEmployeeScreenState();
}

class _ExploreEmployeeScreenState extends State<ExploreEmployeeScreen> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var text = SizeConfig.textMultiplier;

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
                      EdgeInsets.only(top: SizeConfig.heightMultiplier * 6),
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
                            Container(
                              height: height * 3,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset('images/Icon simple-probot.png',color: Colors.white,),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Tech Jobs',
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
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset('images/Icon feather-shopping-cart.png',color: Colors.white,),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Marketing Jobs',
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
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset('images/Icon awesome-draw-polygon.png',color: Colors.white,),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Designing Jobs',
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
                          ],
                        )
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
