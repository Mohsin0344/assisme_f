import 'package:assisme/Screens/DashBoardProfileEmployer.dart';
import 'package:assisme/Screens/HomePageEmployer.dart';
import 'package:assisme/Screens/MessagesEmployer.dart';
import 'package:assisme/Screens/RecordCameraEmployer.dart';
import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'Explore_Employer_Screen.dart';
class HomePageNavBar extends StatefulWidget {
  @override
  _HomePageNavBarState createState() => _HomePageNavBarState();
}

class _HomePageNavBarState extends State<HomePageNavBar> {
  var height = SizeConfig.imageSizeMultiplier * 100;
  var width = SizeConfig.imageSizeMultiplier * 200;
  var padding = 8.0;
  Color glowColor=Color(0xffFBB034);
  PageController _myPage = PageController(initialPage: 0);
  bool butVisibility1 = true;
  bool butVisibility2 = false;
  bool butVisibility3 = false;
  bool butVisibility4 = false;
  int pageIndex;

  void initState(){
    butVisibility1 = true;
    butVisibility2 = false;
    butVisibility3 = false;
    butVisibility4 = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff393733),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: SizeConfig.heightMultiplier * 8,
          decoration: BoxDecoration(
              color: Color(0xff393733),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
              ),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0.1,
                    blurRadius: 8,
                    color: Color(0xff707070)
                )
              ]
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Container(
                          child: IconButton(
                            iconSize: SizeConfig.textMultiplier * 4,
                            icon: GlowIcon(FontAwesomeIcons.home,
                              glowColor:butVisibility1==true? Color(0xffFBB034).withOpacity(.8):Colors.transparent,
                              blurRadius: 5,
                              offset: Offset(0,3),
                            ),
                            color: Color(0xffFBB034),
                            onPressed: () {
                              setState(() {
                                _myPage.jumpToPage(0);
                                butVisibility1 = true;
                                butVisibility2 = false;
                                butVisibility3 = false;
                                butVisibility4 = false;
                              });
                            },
                          ),
                        ),
                      ),
                      // Visibility(
                      //   visible: butVisibility1 == true ? true : false,
                      //   child: Expanded(
                      //     flex: 2,
                      //     child: Container(
                      //       margin: EdgeInsets.symmetric(
                      //           horizontal: 16
                      //       ),
                      //       color: Color(0xff00A9A5),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            iconSize: SizeConfig.textMultiplier * 4,
                            icon: GlowIcon(Icons.location_on,
                              blurRadius: 5,
                              offset: Offset(0,3),
                              glowColor:butVisibility2==true? Color(0xffFBB034).withOpacity(.8):Colors.transparent,
                            ),
                            color: Color(0xffFBB034),
                            onPressed: () {
                              setState(() {
                                _myPage.jumpToPage(1);
                                butVisibility1 = false;
                                butVisibility2 = true;
                                butVisibility3 = false;
                                butVisibility4 = false;
                              });
                            },
                          ),
                        ),
                      ),
                      // Visibility(
                      //   visible: butVisibility2 == true ? true : false,
                      //   child: Expanded(
                      //     flex: 2,
                      //     child: Container(
                      //       margin: EdgeInsets.symmetric(
                      //           horizontal: 16
                      //       ),
                      //       color: Color(0xff00A9A5),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            iconSize: SizeConfig.textMultiplier * 4,
                            icon: GlowIcon(
                                Icons.shopping_cart_rounded,
                              blurRadius: 5,
                              offset: Offset(0,3),
                              glowColor:butVisibility3==true? Color(0xffFBB034).withOpacity(.8):Colors.transparent,
                            ),
                            color:  Color(0xffFBB034),
                            onPressed: () {
                              setState(() {
                                _myPage.jumpToPage(2);
                                butVisibility1 = false;
                                butVisibility2 = false;
                                butVisibility3 = true;
                                butVisibility4 = false;
                              });
                            },
                          ),
                        ),
                      ),
                      // Visibility(
                      //   visible: butVisibility3 == true ? true : false,
                      //   child: Expanded(
                      //     flex: 2,
                      //     child: Container(
                      //       margin: EdgeInsets.symmetric(
                      //           horizontal: 16
                      //       ),
                      //       color:Color(0xff00A9A5),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Container(
                          child: IconButton(
                            iconSize: SizeConfig.textMultiplier * 4,
                            icon: GlowIcon(Icons.account_box,
                              blurRadius: 5,
                              offset: Offset(0,3),
                            glowColor:butVisibility4==true? Color(0xffFBB034).withOpacity(.8):Colors.transparent,
                            ),
                            color: Color(0xffFBB034),
                            onPressed: () {
                              setState(() {
                                _myPage.jumpToPage(3);
                                butVisibility1 = false;
                                butVisibility2 = false;
                                butVisibility3 = false;
                                butVisibility4 = true;
                              });
                            },
                          ),
                        ),
                      ),
                      // Visibility(
                      //   visible: butVisibility4 == true ? true : false,
                      //   child: Expanded(
                      //     flex: 2,
                      //     child: Container(
                      //       margin: EdgeInsets.symmetric(
                      //           horizontal: padding * 2
                      //       ),
                      //       color:Color(0xff00A9A5),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: PageView(
          controller: _myPage,
          onPageChanged: (pageIndex) {
            print('Page Changes to index $pageIndex');
          },
          //////////////////////////********////////////////
          children: <Widget>[
            HomePageEmployer(),
            Explore_Employer_Screen(),
            MessagesEmployer(),
            DashBoardProfileEmployer()
          ],
          //physics: NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
        ),
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: (){
                Navigator.push(context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                       child: RecordCameraEmployer()
                    ));
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: SizeConfig.textMultiplier * 6,
              ),
              // elevation: 5.0,
              backgroundColor: Color(0xffFBB034),
            ),
          ),
        ),
      ),
    );
  }
}

// onPressed: () {
// setState(() {
// _myPage.jumpToPage(0);
// });
// // },