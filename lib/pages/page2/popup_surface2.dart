/*import 'package:flutter/material.dart';
import 'package:petapplication/core/utils/size_config.dart';

class PopUpSerfacePage2 extends StatefulWidget {
  const PopUpSerfacePage2({super.key});

  @override
  State<PopUpSerfacePage2> createState() => _PopUpSerfacePage2State();
}

class _PopUpSerfacePage2State extends State<PopUpSerfacePage2> {
 PageController pageController = PageController();
  @override
  
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(19),
      borderSide: const BorderSide(width: 1.0, color:  Color.fromARGB(70, 112, 112, 112)));
    double aspectRatio = screenHeight/screenWidth;
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        padding: EdgeInsets.only(
                      bottom: screenHeight*0 ,
                      right: screenWidth *0.065,
                      left:screenWidth*0.065,
                      //top: screenWidth *0.08
                    ),
        child: Column(
             
              mainAxisSize: MainAxisSize.min,
        
               crossAxisAlignment : CrossAxisAlignment.center ,
              children: [
                
                           const  SizedBox(
                              height: 15,
                            )
            ,   
                   
               Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! * 0.0,
                    horizontal: SizeConfig.defaultSize! * 0),
                 child: TextFormField(
                   expands: false,
                          obscureText:true ,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (newValue) => 2,
                          style:const TextStyle(color: Color(0xff090F0F)),
                          keyboardAppearance: Brightness.light,
                              decoration: InputDecoration(
                                
                                fillColor:const Color(0xFFFFFFFF),
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
                                  Icons.man_2_outlined ,
                                  color:Color.fromARGB(116, 19, 79, 92), 
                                )
                               ),
                              ),
               ),
                          const SizedBox(
                            height: 10,
                          ),

                       Padding(
                        padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! *0,
                    horizontal: SizeConfig.defaultSize! * 0),
                         child: TextFormField(
                          obscureText:true ,
                          style:const TextStyle(color: Color(0xff090F0F)),
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
                                prefixIcon:const Icon(
                                Icons.email,
                                  color: Color.fromARGB(116, 19, 79, 92),
                                      ),
                               ),
                              ),
                       ),
                            
                  const  SizedBox(
                    height: 10,
                   ) ,
                    Padding(
                     padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize! * 0,
                    horizontal: SizeConfig.defaultSize! * 0),
                      child: TextFormField(
                          obscureText:true ,
                          style:const TextStyle(color: Color(0xff090F0F)),
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
                                prefixIcon:const Icon(
                                Icons.vpn_key,
                                  color: Color.fromARGB(116, 19, 79, 92),
                                      ),
                               ),
                              ),
                    ),      // Add more widgets as needed for the sign-up form
                          ],
                        ),
      ),
    );
  }
}*/