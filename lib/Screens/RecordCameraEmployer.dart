import 'dart:convert';
import 'dart:io';

import 'package:assisme/Screens/CreatePostEmployer.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

import '../size_config.dart';

class RecordCameraEmployer extends StatefulWidget {
  @override
  _RecordCameraEmployerState createState() => _RecordCameraEmployerState();
}

class _RecordCameraEmployerState extends State<RecordCameraEmployer> {
  CameraController controller;
  List cameras;
  int selectedCameraIdx;
  //String imagePath;

  @override
  void initState() {
    super.initState();
    // 1
    availableCameras().then((availableCameras) {
      cameras = availableCameras;
      if (cameras.length > 0) {
        setState(() {
          // 2
          selectedCameraIdx = 0;
        });

        _initCameraController(cameras[selectedCameraIdx]).then((void v) {});
      } else {
        print("No camera available");
      }
    }).catchError((err) {
      // 3
      print('Error: $err.code\nError Message: $err.message');
    });
  }


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              Container(
                child: _cameraPreviewWidget(),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  width: SizeConfig.widthMultiplier * 20,
                  height: SizeConfig.heightMultiplier * 4,
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
                          child: Text(
                            'Back',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 3,
                              fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 30,
                child: Container(
                  child:
                  Image.asset('images/Icon ionic-ios-flash.png',
                  height: SizeConfig.heightMultiplier * 4,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 132,
                child: Container(
                  child: InkWell(
                    onTap: () {
                      _onCapturePressed(context);
                    },
                    child: Image.asset('images/record.png',
                    height: SizeConfig.heightMultiplier * 12
                    ),
                  )
                ),
              ),
              Positioned(
                bottom: 38,
                left: 20,
                child: Image.asset('images/drawable-xxxhdpi/Icon ionic-md-photos.png',
                    height: SizeConfig.heightMultiplier * 4
                ),
              ),
              Positioned(
                bottom: 38,
                right: 20,
                child: InkWell(
                  onTap: (){
                    _onSwitchCamera();
                    print('tapped');
                  },
                  child: Image.asset('images/drawable-xxxhdpi/Icon awesome-camera.png',
                      height: SizeConfig.heightMultiplier * 4
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }

  Future _initCameraController(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }

    // 3
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    // If the controller is updated then update the UI.
    // 4
    controller.addListener(() {
      // 5
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    // 6
    try {
      await controller.initialize();
    } on CameraException catch (e) {
      //_showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  void _onCapturePressed(context) async {
    try {
      // 1
      final path = join(
        (await getTemporaryDirectory()).path,
        '${DateTime.now()}.png',
      );
      // 2
      await controller.takePicture(path);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CreatePostEmployer(path),
        ),
      );


    }


  catch (e) {
      print(e);
    }
  }

  void _onSwitchCamera() {
    selectedCameraIdx =
    selectedCameraIdx < cameras.length - 1 ? selectedCameraIdx + 1 : 0;
    CameraDescription selectedCamera = cameras[selectedCameraIdx];
    _initCameraController(selectedCamera);
  }

   _cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return const Text(
        'Loading',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
      );
    }
      return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller),
      );
  }
}
