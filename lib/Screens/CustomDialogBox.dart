import 'package:assisme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialogBox extends StatefulWidget {
  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Center(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: SizeConfig.heightMultiplier * 25,
                  width: SizeConfig.heightMultiplier* 25,
                  decoration: BoxDecoration(
                      color: Color(0xffFFDA75),
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                      size: SizeConfig.textMultiplier * 20,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 2
                ),
                child: Text(
                  'POSTED',
                  style: GoogleFonts.robotoMono(
                    color: Color(0xffFFDA75),
                    fontSize: SizeConfig.textMultiplier * 6
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
