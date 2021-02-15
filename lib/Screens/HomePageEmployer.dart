
import 'package:assisme/Screens/MessagesEmployer.dart';
import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageEmployer extends StatefulWidget {
  @override
  _HomePageEmployerState createState() => _HomePageEmployerState();
}

class _HomePageEmployerState extends State<HomePageEmployer> {
  bool showJobs = true;
  bool showApplicants = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Color(0xff393733),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.heightMultiplier * 6,
                    left: SizeConfig.widthMultiplier * 10,
                    right: SizeConfig.widthMultiplier * 10
                ),
                height: SizeConfig.heightMultiplier * 10,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffE8E4E4),
                          Color(0xffC4BFBF),
                          Color(0xffA7A2A2),
                        ]
                    ),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            showJobs = true;
                            showApplicants = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Show Jobs',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textMultiplier * 3
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: showJobs ? LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color(0xffDCDBDB),
                                    Color(0xffE8E4E4),
                                  ]
                              ) : null,
                              borderRadius: showJobs ? BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)
                              ): null
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:InkWell(
                        onTap: (){
                          setState(() {
                            showJobs = false;
                            showApplicants = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: SizeConfig.widthMultiplier * 3
                          ),
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Show Applicants',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w300,
                                fontSize: SizeConfig.textMultiplier * 3
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: showApplicants ? LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color(0xffDCDBDB),
                                    Color(0xffE8E4E4),
                                  ]
                              ) : null,
                              borderRadius: showApplicants ? BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)
                              ): null
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                // height: SizeConfig.heightMultiplier * 80,
                child: ListView.builder(
                  padding: EdgeInsets.only(
                    // top: SizeConfig.heightMultiplier * 4,
                      left: SizeConfig.widthMultiplier * 5,
                      right: SizeConfig.widthMultiplier * 5
                  ),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index){
                    return Container(
                      height: SizeConfig.heightMultiplier * 38,
                      margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 4
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Image.asset('images/christian.png',
                                        height: SizeConfig.heightMultiplier * 60,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      padding: EdgeInsets.only(
                                          top: SizeConfig.heightMultiplier * 3,
                                          // bottom: SizeConfig.heightMultiplier,
                                          left: SizeConfig.widthMultiplier * 4,
                                          right: SizeConfig.widthMultiplier * 4
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                'Details',
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                'Software Engineer',
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                '153 Redmango',
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.yellow,
                                                    fontWeight: FontWeight.w300
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                '23F Street # 3,CA',
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: SizeConfig.textMultiplier * 1.9
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(

                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                'We want a software engineer who is '
                                                    'smart, hard-worker and willing'
                                                    'to give his best for the'
                                                    ' company',
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: SizeConfig.textMultiplier * 1.7
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(

                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              child: Image.asset('images/Applied jobs.png',
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.topCenter,
                                                      child: Image.asset('images/cardicon.png'),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      alignment: Alignment.topLeft,
                                                      child: RichText(
                                                        text: TextSpan(
                                                            text: '12/12/2020',
                                                            style: GoogleFonts.montserrat(
                                                                color: Colors.green,
                                                                fontSize: SizeConfig.textMultiplier
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: '  12:04 PM',
                                                                style: GoogleFonts.montserrat(
                                                                    color: Colors.green
                                                                ),
                                                              )
                                                            ]
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: SizeConfig.heightMultiplier * 0.5,
                                    bottom: SizeConfig.heightMultiplier * 0.5
                                ),
                                margin: EdgeInsets.only(
                                    top: SizeConfig.heightMultiplier * 2
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage('images/ellipse.png'),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage('images/ellipse.png'),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage('images/ellipse.png'),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MessagesEmployer()));
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'See All',
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black.withOpacity(0.5)
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff747272)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )
      ),
    );
  }
}