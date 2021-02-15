import 'dart:io';
import 'package:assisme/Screens/CreatePostEmployer.dart';
import 'package:assisme/ScreensEmployee/CreateVideoEmployee.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import '../size_config.dart';
import 'package:video_player/video_player.dart';

class RecordCameraEmployee extends StatefulWidget {
  @override
  _RecordCameraEmployeeState createState() => _RecordCameraEmployeeState();
}

class _RecordCameraEmployeeState extends State<RecordCameraEmployee> {
  CameraController controller;
  List cameras;
  int selectedCameraIdx;
  File _cameraImage;
  final picker = ImagePicker();
  //String imagePath;
  File _image;
  File _video;
  VideoPlayerController _videoPlayerController;
  String videoPath;

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
              child: InkWell(
                onTap:(){
                  Navigator.pop(context);
                },
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
                    onLongPress: (){
                      _startVideoRecording();
                    },
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
                child: Image.asset('images/drawable-xxxhdpi/Icon ionic-md-photos.png',
                    height: SizeConfig.heightMultiplier * 4
                ),
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

  Future<String> _startVideoRecording() async {

    if (!controller.value.isInitialized) {

      return null;

    }

    // Do nothing if a recording is on progress

    if (controller.value.isRecordingVideo) {
      print('recording');
      return null;

    }
    //get storage path

    final Directory appDirectory = await getApplicationDocumentsDirectory();

    final String videoDirectory = '${appDirectory.path}/Videos';

    await Directory(videoDirectory).create(recursive: true);

    final String currentTime = DateTime.now().millisecondsSinceEpoch.toString();

    final String filePath = '$videoDirectory/${currentTime}.mp4';



    try {

      await controller.startVideoRecording(filePath);

      videoPath = filePath;


    } on CameraException catch (e) {

      //_showCameraException(e);

      return null;

    }

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => CreatePostEmployer(videoFromCamera: videoPath,),
    //   ),
    // );
    //gives you path of where the video was stored
    return filePath;
  }
  _pickVideo() async {
    PickedFile pickedFile = await picker.getVideo(source: ImageSource.gallery);
    _video = File(pickedFile.path);
    _videoPlayerController = VideoPlayerController.file(_video)..initialize().then((_) {
      setState(() { });
      _videoPlayerController.play();
    });
  }

  _pickImageFromGallery() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

    File image = File(pickedFile.path);

    setState(() {
      _image = image;
    });
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
          builder: (context) => CreatePostEmployee(image: path),
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
