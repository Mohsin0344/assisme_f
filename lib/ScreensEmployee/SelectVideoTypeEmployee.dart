import 'dart:io';

import 'package:assisme/Screens/CreatePostEmployer.dart';
import 'package:assisme/ScreensEmployee/CreateVideoEmployee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../size_config.dart';
import 'RecordCameraEmployee.dart';

class SelectVideoTypeEmployee extends StatefulWidget {
  @override
  _SelectVideoTypeEmployeeState createState() => _SelectVideoTypeEmployeeState();
}

class _SelectVideoTypeEmployeeState extends State<SelectVideoTypeEmployee> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;
  var text = SizeConfig.textMultiplier;
  final picker = ImagePicker();
  File _image;
  File _video;
  VideoPlayerController _videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffF3CE69),
                      Color(0xffFFB843)
                    ]
                )
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                          child: Image.asset('images/Icon metro-cross.png',
                          height: height * 3,
                          )
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Select Video Type',
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: text * 3,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: SizeConfig.isMobilePortrait?7:4,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff393733),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)
                        )
                    ),
                    child: ListView(
                      padding: EdgeInsets.only(
                        top: height * 6,
                        left: width * 8,
                        right: width * 8
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: width * 36
                          ),
                          child: Text(
                            'Pre-Recorded Videos',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: text * 2.5
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 2
                              )
                            )
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: height * 2
                            ),
                            width: width * 33,
                            height: height * 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('images/Joseph.png'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(
                            top: height * 3
                          ),
                          child: Text(
                            'OR',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: text * 5
                            ) ,
                          ),
                        ),
                        Container(
                          height: height * 14,
                          margin: EdgeInsets.symmetric(
                            horizontal: width * 6,
                            vertical: height * 2
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: InkWell(
                                  onLongPress: () async{
                                    await  _pickVideo();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CreatePostEmployee(videoFromGallery: _videoPlayerController,),
                                      ),
                                    );
                                  },
                                  onTap: () async {
                                    await _pickImageFromGallery();
                                    print('entereddddddddddd herereee');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CreatePostEmployee(imageFromGallery: _image,),
                                      ),
                                    );
                                    print('pick image from camera');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      top: height * 2,
                                      bottom: height * 2,
                                      left: width,
                                      right: width
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffE8E4E4),
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Padding(
                                                padding: EdgeInsets.all(4),
                                                child: Image.asset('images/Icon awesome-images.png')),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Select from Gallery',
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: text * 1.5
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Expanded(
                                flex: 8,
                                child: InkWell(
                                  onTap: (){
                                    print('tappped');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RecordCameraEmployee(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: height * 2,
                                        bottom: height * 2,
                                        left: width,
                                        right: width
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xffE8E4E4),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Padding(
                                                padding: EdgeInsets.all(4),
                                                child: Image.asset('images/Group 38.png')),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Record Now',
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.black,
                                                  fontSize: text * 1.5
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      )
    );
  }
  _pickImageFromGallery() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

    File image = File(pickedFile.path);

    setState(() {
      _image = image;
    });
  }
  _pickVideo() async {
    PickedFile pickedFile = await picker.getVideo(source: ImageSource.gallery);
    _video = File(pickedFile.path);
    _videoPlayerController = VideoPlayerController.file(_video)..initialize().then((_) {
      setState(() { });
      _videoPlayerController.play();
    });
  }
}
