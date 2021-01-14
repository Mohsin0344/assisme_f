import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class DashBoardProfileEmployer extends StatefulWidget {
  @override
  _DashBoardProfileEmployerState createState() => _DashBoardProfileEmployerState();
}

class _DashBoardProfileEmployerState extends State<DashBoardProfileEmployer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff55534D),
      height: SizeConfig.heightMultiplier,
      child: ListView(
          children: [
            Container(
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
                        'Employer',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFBB034),
                            fontSize: SizeConfig.textMultiplier * 1.8,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'CEO At Redmango',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFFCF80),
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 4,
                  left: SizeConfig.widthMultiplier * 4,
                  right: SizeConfig.widthMultiplier * 4
              ),
              height: SizeConfig.heightMultiplier * 70,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4/6,
                    crossAxisCount: (SizeConfig.isMobilePortrait) ? 2 : 3),
                controller: new ScrollController(keepScrollOffset: false),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: SizeConfig.heightMultiplier * 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('images/pic.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.16),
                            offset: Offset(0, 8.0),
                            blurRadius: 18.0,
                          )
                        ]
                    ),
                  );
                },
              ),
            ),
          ]
      ),
    );
  }
}