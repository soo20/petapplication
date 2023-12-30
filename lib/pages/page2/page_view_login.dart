import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';



import 'package:petapplication/core/utils/size_config.dart';
import 'package:petapplication/core/utils/widgets/constants.dart';
import 'package:petapplication/core/utils/widgets/custom_buttom.dart';


class PageViewLogin extends StatefulWidget {
   const PageViewLogin({super.key});

  @override
  State<PageViewLogin> createState() => _PageViewLoginState();
}

class _PageViewLoginState extends State<PageViewLogin> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(19),
      borderSide: const BorderSide(width: 1.0, color:  Color.fromARGB(70, 112, 112, 112)));
    double aspectRatio = screenHeight/screenWidth;
    return PageView(
      controller: _pageController,
       physics: const NeverScrollableScrollPhysics(),
      children:  [
        Column(
         
          mainAxisSize: MainAxisSize.min,

           crossAxisAlignment : CrossAxisAlignment.center ,
          children: [
            
                        const SizedBox(
                          height: 25,
                        )
        ,          
            Flexible(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! * 1.0,
                    horizontal: SizeConfig.defaultSize! * 7),

               child:  const CustomGeneralButtom2(
                          height: 45,
                          text: 'Continue With Google',
                          textColor: kMainColorPage,
                          icon: FontAwesomeIcons.google,
                          iconcolor: Color.fromARGB(255, 248, 54, 90),
                          boxColor: kMainColor,
                          borderColor: kMainColor,
                          width: null,
                        )
                     
              ),
            ),
            Flexible(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! * 0.001,
                    horizontal: SizeConfig.defaultSize! * 7),
                   
                child: CustomGeneralButtom2(
                          height: 45,
                          text: 'Continue with Email',
                      onTap: () {
                      if (_pageController.page! < 1) {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.fastOutSlowIn);
                      } 
                    },
                          textColor: kMainColorPage,
                          icon: FontAwesomeIcons.envelope,
                          iconcolor: kMainColorPage,
                          boxColor: const Color.fromARGB(255, 248, 54, 90),
                          borderColor: const Color.fromARGB(255, 248, 54, 90),
                          width: null,
                        )
                     
              ),
            ),
            Flexible(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! * 1.0,
                    horizontal: SizeConfig.defaultSize! * 7),
                child:CustomGeneralButtom2(
                          height: 45,
                          text: 'Continue With Facebook',
                          icon: FontAwesomeIcons.facebook,
                          iconcolor: kMainColorPage,
                          textColor: kMainColorPage,
                          boxColor: const Color(0xff80CBC4),
                          borderColor: kMainColorPage,
                          width: SizeConfig.screenWidth,
                        )
                      
              ),
            ),
              const  SizedBox(
                height: 40,
               )       // Add more widgets as needed for the sign-up form
                      ],
                    ),
       AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        padding: EdgeInsets.only(
                      bottom: screenHeight*0 ,
                      right: screenWidth *0.055,
                      left:screenWidth*0.055,
                      //top: screenWidth *0.08
                    ),
        child: Column(
             
              mainAxisSize: MainAxisSize.min,
        
               crossAxisAlignment : CrossAxisAlignment.center ,
              children: [
                
                           const  SizedBox(
                              height: 12,
                            )
            ,   
                   
               TextFormField(
                 expands: false,
                        obscureText:true ,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (newValue) => 2,
                        style:const TextStyle(color: Color(0xff090F0F)),
                        keyboardAppearance: Brightness.light,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 15,),
                              
                              fillColor:const Color(0xFFFFFFFF),
                              filled: true,
                              hintText: 'Name',
                             hintStyle: const TextStyle(
                              fontFamily: 'Poppins',
                                 fontSize: 15,
                               color: Color.fromARGB(116, 19, 79, 92),
                                fontWeight: FontWeight.w800,
                                   ),
                              enabledBorder: border,
                              focusedBorder: border,
                              prefixIcon: const Icon(
                                Icons.man_2_outlined ,
                                color:Color.fromARGB(116, 19, 79, 92), 
                              )
                             ),
                            ),
                          const SizedBox(
                            height: 7,
                          ),

                       TextFormField(
                        obscureText:true ,
                        style:const TextStyle(color: Color(0xff090F0F)),
                            decoration: InputDecoration(
                               contentPadding: const EdgeInsets.symmetric(vertical: 15),
                              fillColor: const Color(0xFFFFFFFF),
                              filled: true,
                              hintText: 'Email',
                             hintStyle: const TextStyle(
                              fontFamily: 'Poppins',
                                 fontSize: 15,
                               color: Color.fromARGB(116, 19, 79, 92),
                                fontWeight: FontWeight.w800,
                                   ),
                              enabledBorder: border,
                              focusedBorder: border,
                              prefixIcon:const Icon(
                              Icons.email,
                                color: Color.fromARGB(116, 19, 79, 92),
                                    ),
                             ),
                            ),
                            
                  const  SizedBox(
                    height: 7,
                   ) ,
                    TextFormField(
                        obscureText:true ,
                        style:const TextStyle(color: Color(0xff090F0F)),
                            decoration: InputDecoration(
                               contentPadding: const EdgeInsets.symmetric(vertical: 15),
                              fillColor: const Color(0xFFFFFFFF),
                              filled: true,
                              hintText: 'Password',
                             hintStyle: const TextStyle(
                              fontFamily: 'Poppins',
                                 fontSize: 15,
                               color: Color.fromARGB(116, 19, 79, 92),
                                fontWeight: FontWeight.w800,
                                   ),
                              enabledBorder: border,
                              focusedBorder: border,
                              prefixIcon:const Icon(
                              Icons.vpn_key,
                                color: Color.fromARGB(116, 19, 79, 92),
                                    ),
                             ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                             Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! * 2.1,
                    horizontal: SizeConfig.defaultSize! * 8.5),
                child:CustomGeneralButtom(
                          height: 45,
                          text: 'Sign Up',
                          textColor: kMainColorPage,
                          boxColor: kMainColor,
                          fontWeight: FontWeight.w800,
                          width: SizeConfig.screenWidth,
                        )
                      
              ),     // Add more widgets as needed for the sign-up form
                          ],
                        ),
      ),
    ),
      ],
    );
  }
}