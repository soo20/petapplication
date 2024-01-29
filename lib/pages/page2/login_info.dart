import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:petapplication/core/utils/size_config.dart';
import 'package:petapplication/core/utils/widgets/custom_buttom.dart';
import 'package:petapplication/pages/pageforgetpass/my_verify_pass.dart';
//import 'package:flutter_svg/svg.dart';

class LoginInfo extends StatefulWidget {
  const LoginInfo({super.key});

  @override
  State<LoginInfo> createState() => _LoginInfoState();
}

class _LoginInfoState extends State<LoginInfo> {
  @override
  Widget build(BuildContext context) {
    double aspectRatio = screenHeight / screenWidth;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 206, 201, 201),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: const Color(0xff707070),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 60,
            right: SizeConfig.defaultSize! / 0.1,
            width: 350,
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: Image.asset(
                'assets/image/Group286.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned.fill(
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: content(),
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
            width: 1.0, color: Color.fromARGB(70, 112, 112, 112)));

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        
        height: SizeConfig.defaultSize! * 55.0,
        width: screenWidth, // Adjust as needed
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/login.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: 
         Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.080,
                    right: screenWidth * 0.045,
                    left: screenWidth * 0.045),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: const Offset(1, 10),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: TextField(
                        controller: emailController,
                        obscureText: true,
                        style: const TextStyle(color: Color(0xff090F0F)),
                        decoration: InputDecoration(
                            fillColor: const Color(0xFFFFFFFF),
                            filled: true,
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color.fromARGB(116, 19, 79, 92),
                              fontWeight: FontWeight.w600,
                            ),
                            enabledBorder: border,
                            focusedBorder: border,
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Color.fromARGB(116, 19, 79, 92),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: const Offset(1, 10),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: TextField(
                        controller: passController,
                        obscureText: true,
                        style: const TextStyle(color: Color(0xff090F0F)),
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFFFFFFF),
                          filled: true,
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color.fromARGB(116, 19, 79, 92),
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: border,
                          focusedBorder: border,
                          prefixIcon: const Icon(
                            Icons.vpn_key,
                            color: Color.fromARGB(116, 19, 79, 92),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.027,
                      width: 0,
                    ),
                    CustomGeneralButtom(
                      boxColor: const Color(0xff134F5C),
                      textColor: const Color(0xffFFFFFF),
                      height: screenHeight * 0.029,
                      width: SizeConfig.defaultSize! * 16,
                      text: 'Log in',
                      fontWeight: FontWeight.w900,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.025,
                          width: 40,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Forget Your Password? ',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xff090f0f),
                              fontWeight: FontWeight.w400,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'click here',
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.4,
                                  color: Color(0xff090f0f),
                                  fontWeight: FontWeight.w900,
                                ),
                                // Add onTap callback to navigate to the next page
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyVerify()),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
