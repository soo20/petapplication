// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:petapplication/core/utils/size_config.dart';
import 'package:petapplication/core/utils/widgets/repeatColorsUse.dart';

import 'package:petapplication/core/utils/widgets/custom_buttom.dart';
import 'package:petapplication/pages/page2/logintext.dart';

class Component1310 extends StatelessWidget {
  const Component1310({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate aspect ratio based on screen dimensions
    double aspectRatio = screenWidth / screenHeight;

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                border: Border.all(width: 0.4, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(170.0, 75.0, 10.0, 465.2),
              width: screenWidth,
              height: screenHeight,
            ),
          ),
          Positioned(
            right: 100.7,
            bottom: 403.0,
            //width: 90,
            height: 63,
            child: SvgPicture.string(
              '<svg viewBox="76.2 386.5 158.9 140.5" ><path transform="translate(-1877.52, 4023.51)" d="M 2112.6181640625 -3637 L 2060.0625 -3545.62158203125 L 1953.72900390625 -3496.4853515625 L 1953.72900390625 -3496.4853515625 L 2016.062255859375 -3545.62158203125 L 2003.840087890625 -3637 L 2112.6181640625 -3637 Z" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
              allowDrawingOutsideViewBox: true,
              width: 90,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(160.0, 100.0, 00.0, 00.0),
            child: SizedBox.expand(
              child: Text(
                'Unlock a world of pet love\nwith me and my friends: \n Connect,share, and\nenhance your furry friend\'s\n life,are you ready to meet \nmy friends?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Component1311 extends StatelessWidget {
  const Component1311({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate aspect ratio based on screen dimensions
    double aspectRatio = screenWidth / screenHeight;
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(20.0, 115.0, 135.0, 377.2),
            ),
          ),
          Positioned(
            right: 184.5,
            bottom: 290.0,
            width: 80,
            height: 105.4,
            child: SvgPicture.string(
              _svg_pp2ta,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 124.0, 115.0, 00.0),
            child: SizedBox.expand(
                child: Text(
              'I don\'t mind whether or not you\nknow me. Many people do\nknow me, but I\'m sparky, There\nis a community for pet lovers\nto connect with each other,\nadopt pets, and find\ncompanions for them. Are you\nfamiliar with it? I\'m a well-\nknown monkey in that\ncommunity',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.0,
                color: Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}

class Component1312 extends StatelessWidget {
  const Component1312({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate aspect ratio based on screen dimensions
    double aspectRatio = screenWidth / screenHeight;

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(width: 0.4, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(175.0, 80.0, 10.0, 477.2),
              width: screenWidth,
              height: screenHeight,
            ),
          ),
          Positioned(
            right: 120.7,
            bottom: 417.0,
            width: 72,
            height: 60,
            child: SvgPicture.string(
              '<svg viewBox="76.2 386.5 158.9 140.5" ><path transform="translate(-1877.52, 4023.51)" d="M 2112.6181640625 -3637 L 2060.0625 -3545.62158203125 L 1953.72900390625 -3496.4853515625 L 1953.72900390625 -3496.4853515625 L 2016.062255859375 -3545.62158203125 L 2003.840087890625 -3637 L 2112.6181640625 -3637 Z" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(166.0, 100.0, 00.0, 00.0),
            child: SizedBox.expand(
              child: Text(
                'Hello, I am Tesla. Many pet\nowners want to train their\npets and acquire the\nnecessary information\nabout them, and I am here\nto assist with that',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13.5,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            right: 23,
            left: SizeConfig.defaultSize! * 28,
            bottom: SizeConfig.defaultSize! * 4,
            child: CustomGeneralButtom(
              text: 'Finish',
              boxColor: kMainColor,
              fontWeight: FontWeight.w600,
              onTap: () {
                Get.to(
                  () =>
                      const LoginText(), // Replace YourNextPage with the actual class for the next page
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 300),
                );
              },
              textColor: kMainColorPage,
              height: 55,
            ),
          ),
        ],
      ),
    );
  }
}

class Component1313 extends StatelessWidget {
  const Component1313({super.key});

  @override
  Widget build(BuildContext context) {
    double aspectRatio = screenWidth / screenHeight;
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: kMainColorPage,
                borderRadius: BorderRadius.circular(29.0),
                border: Border.all(width: 0.6, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(20.0, 85.0, 180.0, 488.2),
            ),
          ),
          Positioned(
            right: 200.7,
            top: 218.0,
            width: 75,
            height: 60,
            child: SvgPicture.string(
              _svg_pp2ta,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(00.0, 92.0, 155.0, 00.0),
            child: SizedBox.expand(
                child: Text(
              overflow: TextOverflow.ellipsis,
              'Let\'s start by defining\nyour lovely pet. You can \nchoose to define it with\nJack, or you can\nmanually add your pet\'s\ndetails.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.4,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}

class Component1314 extends StatelessWidget {
  const Component1314({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate aspect ratio based on screen dimensions
    double aspectRatio = screenWidth / screenHeight;

    // Calculate dimensions based on a 16:9 aspect ratio

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(5.0, 115.0, 175.0, 444.2),
            ),
          ),
          Positioned(
            right: 190.7,
            bottom: 362.0,
            width: 75,
            height: 100,
            child: SvgPicture.string(
              _svg_pp2ta,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 124.0, 175.0, 00.0),
            child: SizedBox.expand(
              child: RichText(
                text: const TextSpan(
                  text: 'Hi, I\'m Jack.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.4,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'In our app\nrecognizes your pet from\ntheir photo and provides\nkey information. Welcome\nto a world where your pet\nshines!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.4,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Component1315 extends StatelessWidget {
  const Component1315({super.key});

  @override
  Widget build(BuildContext context) {
    double aspectRatio = screenWidth / screenHeight;
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: kMainColorPage,
                borderRadius: BorderRadius.circular(23.0),
                border: Border.all(width: 0.4, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(45.0, 62.0, 145.0, 515.2),
            ),
          ),
          Positioned(
            right: 155.7,
            top: 192.0,
            width: 80,
            height: 62,
            child: SvgPicture.string(
              _svg_pp2ta,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(50.0, 88.0, 155.0, 20.0),
            child: SizedBox.expand(
                child: Text(
              overflow: TextOverflow.ellipsis,
              'hello, my friend, please \ntake a photo of your pet \n to provide some\ninformation about it',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}

class Component1316 extends StatelessWidget {
  const Component1316({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate aspect ratio based on screen dimensions
    double aspectRatio = screenWidth / screenHeight;

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(width: 0.4, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(170.0, 110.0, 10.0, 445.2),
              width: screenWidth,
              height: screenHeight,
            ),
          ),
          Positioned(
            right: 120.7,
            bottom: 387.0,
            width: 72,
            height: 60,
            child: SvgPicture.string(
              '<svg viewBox="76.2 386.5 158.9 140.5" ><path transform="translate(-1877.52, 4023.51)" d="M 2112.6181640625 -3637 L 2060.0625 -3545.62158203125 L 1953.72900390625 -3496.4853515625 L 1953.72900390625 -3496.4853515625 L 2016.062255859375 -3545.62158203125 L 2003.840087890625 -3637 L 2112.6181640625 -3637 Z" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160.0, 125.0, 00.0, 00.0),
            child: SizedBox.expand(
              child: RichText(
                text: const TextSpan(
                  text: 'Hi, I\'m Gizmo',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '.Hey pet pals! \nGizmo here. Our app now \ndetects skin and fecal\n issues for your furry\nbuddies. It\'s like a health \nsuperhero in your pocket! ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Component1317 extends StatelessWidget {
  const Component1317({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate aspect ratio based on screen dimensions
    double aspectRatio = screenWidth / screenHeight;

    // Calculate dimensions based on a 16:9 aspect ratio

    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(width: 0.4, color: const Color(0xff707070)),
              ),
              margin: const EdgeInsets.fromLTRB(60.0, 85.0, 130.0, 480.2),
            ),
          ),
          Positioned(
            right: 180.7,
            bottom: 409.0,
            width: 70,
            height: 80,
            child: SvgPicture.string(
              _svg_pp2ta,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 105.0, 99.0, 00.0),
            child: SizedBox.expand(
                child: Text(
              overflow: TextOverflow.ellipsis,
              'Hey pet pals! Wanda here.\nExciting news—our app\'s\n community is now open to\nallpet lovers! Dive in for\nheartwarming stories and\n  furry friendships',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.5,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}

// ignore: constant_identifier_names
const String _svg_pp2ta =
    '<svg viewBox="299.2 364.0 181.2 160.2" ><path transform="translate(-1654.57, 4001.0)" d="M 1953.72900390625 -3637 L 2013.6484375 -3532.818359375 L 2134.880859375 -3476.79736328125 L 2134.880859375 -3476.79736328125 L 2063.813720703125 -3532.818359375 L 2077.748291015625 -3637 L 1953.72900390625 -3637 Z" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
