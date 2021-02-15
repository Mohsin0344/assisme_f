import 'dart:io';
import 'dart:async';

import 'package:assisme/Screens/CustomDialogBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

import '../size_config.dart';

class CreatePostEmployer extends StatefulWidget {
 final String image;
 var imageFromGallery;
 var videoFromGallery;
 var videoFromCamera;
  CreatePostEmployer({this.image,
    this.imageFromGallery,
    this.videoFromGallery,
    this.videoFromCamera
  });
  @override
  _CreatePostEmployerState createState() => _CreatePostEmployerState();
}

class _CreatePostEmployerState extends State<CreatePostEmployer> {
  VideoPlayerController _videoPlayerController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffF3CE69),
                Color(0xffFFB843),
              ]
            ),
          ),
          child: Column(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 12,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 5
                            ),
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/Icon metro-cross.png',
                          height: SizeConfig.heightMultiplier * 4
                          )
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier * 5
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Create Post',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: SizeConfig.textMultiplier * 3
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    top: SizeConfig.heightMultiplier * 1,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff393733),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                    )
                  ),
                  child: ListView(
                    padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 5,
                        left: SizeConfig.widthMultiplier * 8,
                        right: SizeConfig.widthMultiplier * 5
                    ),
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 13,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Choose Category',
                                style: GoogleFonts.montserrat(
                                  color: Color(0xffE8E4E4)
                                )
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, index){
                                    return Container(
                                      margin: EdgeInsets.only(
                                        right: SizeConfig.widthMultiplier * 4
                                      ),
                                      height: SizeConfig.heightMultiplier * 8,
                                      width: SizeConfig.heightMultiplier * 8,
                                      decoration: BoxDecoration(
                                        //color: Colors.red
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xffFBFBFB),
                                                    Color(0xff747272)
                                                  ]
                                                )
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                  child: Image.asset('images/Icon simple-probot.png')),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                'Tech',
                                                style: GoogleFonts.montserrat(
                                                  color: Color(0xffE8E4E4)
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.widthMultiplier * 6
                        ),
                        height: SizeConfig.heightMultiplier * 35,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.only(
                                  bottom: SizeConfig.heightMultiplier * 10
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff2B2A27),
                                ),
                                child: checkForSource()
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: SizeConfig.widthMultiplier * 1.5
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff2B2A27),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              //fit: FlexFit.loose,
                                              child: Container(
                                                width: SizeConfig.widthMultiplier * 8,
                                                child: Divider(
                                                  color: Color(0xffFFFFFF),
                                                  thickness: 1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              //fit: FlexFit.loose,
                                              flex: 3,
                                              child: Container(
                                                width: SizeConfig.widthMultiplier * 30,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Write about this job',
                                                  style: GoogleFonts.roboto(
                                                    color: Color(0xffE8E4E4),
                                                    fontSize: SizeConfig.textMultiplier * 1.4,
                                                    fontWeight: FontWeight.w300
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              //fit: FlexFit.loose,
                                              flex: 3,
                                              child: Container(
                                                //width: SizeConfig.widthMultiplier * 100,
                                                //width: double.infinity,
                                                child: Divider(
                                                  thickness: 1,
                                                  color: Color(0xffFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: SizeConfig.widthMultiplier * 2,
                                            right: SizeConfig.widthMultiplier * 2,
                                            bottom: SizeConfig.heightMultiplier * 2
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            left: SizeConfig.widthMultiplier * 2,
                                              right: SizeConfig.widthMultiplier * 2,
                                              bottom: SizeConfig.heightMultiplier * 2
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xff393733),
                                            borderRadius: BorderRadius.circular(12)
                                          ),
                                          child: TextField(
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                            ),
                                            cursorColor: Colors.white,
                                            decoration: InputDecoration(
                                              filled: false,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              hintText: 'Enter text here. . .',
                                              hintStyle: GoogleFonts.robotoMono(
                                                color: Color(0xffE8E4E4),
                                                fontWeight: FontWeight.w300,
                                                fontSize: SizeConfig.textMultiplier * 2

                                              )
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier
                        ),
                        child: Text(
                          'Requirements',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffE8E4E4)
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier
                        ),
                        padding: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier ,
                          bottom: SizeConfig.heightMultiplier * 2,
                          left: SizeConfig.widthMultiplier * 2,
                          right: SizeConfig.widthMultiplier * 2
                        ),
                        height: SizeConfig.heightMultiplier * 18,
                        decoration: BoxDecoration(
                          color: Color(0xff2B2A27),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: TextField(
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              filled: false,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: 'Write your requirements here. . .',
                              hintStyle: GoogleFonts.robotoMono(
                                  color: Color(0xffE8E4E4),
                                  fontWeight: FontWeight.w300,
                                  fontSize: SizeConfig.textMultiplier * 2

                              )
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            showDialog(context: context,
                                builder: (BuildContext context){
                                  return CustomDialogBox();
                                }
                            );
                            print('clicked');
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: SizeConfig.heightMultiplier * 2,
                              left: SizeConfig.widthMultiplier * 16,
                              right: SizeConfig.widthMultiplier * 16
                            ),
                            alignment: Alignment.center,
                            height: SizeConfig.heightMultiplier * 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffFFDA75),
                                  Color(0xffFFDA75),
                                ]
                              )
                            ),
                            child: Text(
                              'POST',
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: SizeConfig.textMultiplier * 3,
                                fontWeight: FontWeight.w500
                              ),
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
      )
    );
  }
  checkForSource(){
    if(widget.image != null && widget.imageFromGallery == null && widget.videoFromGallery == null && widget.videoFromCamera==null){
      return Image.file(File(widget.image));
    } else if(widget.image == null && widget.imageFromGallery != null && widget.videoFromGallery == null && widget.videoFromCamera==null){
      return Image.file(widget.imageFromGallery);
    }else if(widget.image == null && widget.imageFromGallery == null && widget.videoFromGallery != null && widget.videoFromCamera == null) {
      // return AspectRatio(
      //     aspectRatio: widget.videoFromGallery.value.aspectRatio,
      //     child: VideoPlayer(widget.videoFromGallery));
      return VideoPlayer(widget.videoFromGallery);
    } else {
      return VideoPlayerController.file(widget.videoFromCamera);
    }
  }
}


