import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:petapplication/core/utils/widgets/custom_buttom.dart';
import 'package:petapplication/core/utils/widgets/repeatColorsUse.dart';
import 'package:petapplication/pages/info_page/information.dart';
import 'package:petapplication/pages/page3/camera.dart';
import 'package:petapplication/pages/pet_setting_pages/add_pet.dart';

class DetectScreen extends StatefulWidget {
  final String imgPath; // Image path from PreviewScreen
  final void Function(BuildContext) onCapturePressed;
  const DetectScreen({
    super.key,
    required this.imgPath,
    required this.onCapturePressed,
  });

  @override
  State<DetectScreen> createState() => _DetectScreenState();
}

class _DetectScreenState extends State<DetectScreen> {
  late CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: Align(
        child: Container(
          height: 1600.h,
          width: 860.w,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                'assets/image/detectScreen.png',
              ),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 65.0),
                  child: Column(
                    children: [
                      Container(
                        height: 540.h,
                        width: 540.w,
                        decoration: BoxDecoration(
                            // color: const Color(0xffEEEFEF), // Box color
                            borderRadius: BorderRadius.circular(60.r),
                            border: Border.all(
                                color: const Color(0xff707070),
                                width: 0.4) 
                            ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.r),
                          child: Image.file(
                            File(widget.imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                     SizedBox(height: 10.h,),
                       Text(
                // we put the text string.
                'Your Pet Type is',
                //to style your text:
                style: TextStyle(
                  fontFamily: 'Cosffira',
                  //to make adaptive font size we call 'sp' function.
                  fontSize: 40.sp,
                  color: const Color(0xff465948),
                  //to make your font normal "regular" or bold.
                  fontWeight: FontWeight.normal,
                ),
                /*The content of the text was large, 
                  so it was moved to the front when displaying,
                  and to make it in the center, I put this argument*/
               
              ),

              
                      Text(
                // we put the text string.
                ' 90% ',
                //to style your text:
                style: TextStyle(
                  fontFamily: 'Cosffira',
                  //to make adaptive font size we call 'sp' function.
                  fontSize: 55.sp,
                  color: const Color(0xffDC3356),
                  //to make your font normal "regular" or bold.
                  fontWeight: FontWeight.normal,
                ),
                /*The content of the text was large, 
                  so it was moved to the front when displaying,
                  and to make it in the center, I put this argument*/
                textAlign: TextAlign.center,
              ),
              Text(
                // we put the text string.
                ' Golden Retrivere Dog',
                //to style your text:
                style: TextStyle(
                  fontFamily: 'Cosffira',
                  //to make adaptive font size we call 'sp' function.
                  fontSize: 41.sp,
                  color: const Color(0xff080808),
                  //to make your font normal "regular" or bold.
                  fontWeight: FontWeight.bold,
                ),
                /*The content of the text was large, 
                  so it was moved to the front when displaying,
                  and to make it in the center, I put this argument*/
                textAlign: TextAlign.center,
                
                softWrap: false,
              ),

              Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal:  0),
                child:  CustomGeneralButtom(
                  height: 150.h,
                  text: 'Know more about this type',
                  textColor: const Color(0xffFFFFFF),
                    onTap: () {
                          Get.to(
                            () =>
                                const InfoPage(), // Replace YourNextPage with the actual class for the next page
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                
                  boxColor: kMainColor,
                  borderColor: kMainColor,
                  width: 700.w,
                  customFontSize: 37.sp,
                ),
              ),
            ),
        
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical:0,
                    horizontal:  0),
                child: CustomGeneralButtom(
                  height: 150.h,
                  text: 'Add to your pets',
                   onTap: () {
                          Get.to(
                            () =>
                                const AddPets(), // Replace YourNextPage with the actual class for the next page
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                 customFontSize: 40.sp,
                  textColor: const Color(0xffFFFFFF),
                   boxColor:  const Color(0xffDC3356),
                  borderColor: const Color.fromARGB(255, 248, 54, 90),
                 
                  width: 700.w,
                ),
              ),
            ),
           
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical:9,
                    horizontal:  0),
                child: CustomGeneralButtom(
                  height: 150.h,
                  text: 'Rephoto',
                  customFontSize: 40.sp,
                  onTap: () {
                    navigator?.pushAndRemoveUntil(
                      MaterialPageRoute(builder: (e) => const CameraAlt()),
                      (route) => true,
                    );
                  },
                  textColor: const Color(0xffE3B1A8),
                 
               
                  boxColor:   const Color(0xffFFFFFF),
                  borderColor:  const Color(0xffFFFFFF),
                  width: 700.w,
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
      ),
    );
  }
}