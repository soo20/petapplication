// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:image_picker/image_picker.dart';

import 'package:petapplication/core/utils/widgets/custom_buttom.dart';
import 'package:petapplication/core/utils/widgets/repeatColorsUse.dart';

import 'package:petapplication/some_files_to_data/adding_pet_to_firestore.dart';

class EditPets extends StatefulWidget {
  final PetsInformation petInformation;
  const EditPets({super.key, required this.petInformation});

  @override
  State<EditPets> createState() => _EditPetsState();
}

class _EditPetsState extends State<EditPets> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController petNameController = TextEditingController();
  TextEditingController petGenderController = TextEditingController();
  TextEditingController petIdController = TextEditingController();
  TextEditingController petTypeController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String? selectedPetType; // Variable to store the selected pet type
  bool showSecondContainer = false;

  final _gender = ["Male", "Female"];
  File? _pickedImageFile;
  bool _isLocalImageSelected = false;

  //final _petTypeGender = ['Cat', 'Dog'];

  String?
      _Selected; // Make _Selected nullable againRemove the nullable operator
  //var _currentItemSelected =
  // Function to open the gallery and select an image
  //XFile? _selectedImage;

  // Add a function to open the device's gallery and select an image
  Future<void> _pickedImage(BuildContext context) async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
      maxWidth: MediaQuery.of(context).size.width,
      maxHeight: MediaQuery.of(context).size.height,
    );
    if (pickedImage != null) {
      setState(() {
        _pickedImageFile = File(pickedImage.path);
        _isLocalImageSelected = true;
      });
    }
  }

// Add a function to open the device's camera and capture an image
  Future<void> _selectImageFromCamera() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      maxWidth: MediaQuery.of(context).size.width,
      maxHeight: MediaQuery.of(context).size.height,
    );
    if (pickedImage != null) {
      setState(() {
        _pickedImageFile = File(pickedImage.path);
        _isLocalImageSelected = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize controllers with existing information
    petNameController.text = widget.petInformation.petName;
    petTypeController.text = widget.petInformation.petType;
    petGenderController.text = widget.petInformation.petGender;
    ageController.text = widget.petInformation.age!;
    petIdController.text = widget.petInformation.petId;
    weightController.text = widget.petInformation.petWeight.toString();
  }

  @override
  void dispose() {
    // Dispose controllers when they are no longer needed
    petNameController.dispose();
    petTypeController.dispose();
    petGenderController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEFEF),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showSecondContainer =
                              !showSecondContainer; // Toggle the visibility of the second container
                        });
                      },
                      child: _isLocalImageSelected
                          ? Container(
                              height: 280.h,
                              width: 270.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: FileImage(_pickedImageFile!),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          : StreamBuilder<DocumentSnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('pets')
                                  .doc(widget.petInformation.petId)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const CircularProgressIndicator();
                                } else if (snapshot.hasError) {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text(
                                          'Failed to load your profile photo, please try again later.'),
                                      action: SnackBarAction(
                                        label: 'Close',
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                        },
                                      ),
                                    ),
                                  );
                                  return Container(
                                    height: 280.h,
                                    width: 270.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/profileImage.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  );
                                } else if (snapshot.hasData &&
                                    snapshot.data != null) {
                                  var userData = snapshot.data!.data()
                                      as Map<String, dynamic>?;
                                  var profileImageUrl = userData?['imageUrl'];
                                  DecorationImage decorationImage;
                                  if (profileImageUrl != null) {
                                    decorationImage = DecorationImage(
                                      image: NetworkImage(profileImageUrl),
                                      fit: BoxFit.fill,
                                    );
                                  } else {
                                    decorationImage = const DecorationImage(
                                      image: AssetImage(
                                          'assets/image/profileImage.png'),
                                      fit: BoxFit.fill,
                                    );
                                  }

                                  return Container(
                                    height: 280.h,
                                    width: 270.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: decorationImage,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 70, left: 70),
                                      child: Container(
                                        height: 50.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color: Colors.black
                                                  .withOpacity(0.13),
                                              offset: const Offset(0, 10),
                                            )
                                          ],
                                          color: const Color(0xff80CBC4),
                                        ),
                                        child: const Icon(
                                          Icons.edit,
                                          size: 20,
                                          color: Color.fromARGB(190, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    height: 280.h,
                                    width: 270.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/profileImage.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 70, left: 70),
                                      child: Container(
                                        height: 50.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.white,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color: Colors.black
                                                  .withOpacity(0.13),
                                              offset: const Offset(0, 10),
                                            )
                                          ],
                                          color: const Color(0xff80CBC4),
                                        ),
                                        child: const Icon(
                                          Icons.edit,
                                          size: 20,
                                          color: Color.fromARGB(190, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                    ),

                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      'MAIN INFORMATION',
                      style: TextStyle(
                        fontFamily: 'Cosffira',
                        fontSize: 85.sp,
                        color: const Color(0xff80cbc4),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: const Color(0xa1000000),
                            offset: const Offset(0, 1.5),
                            blurRadius: 6.r,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    //1
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 10),
                      child: TextFormField(
                        controller: petNameController,
                        onChanged: (value) {
                          setState(() {
                            widget.petInformation.petName = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontFamily: 'Cosffira',
                          fontSize: 45.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            // labelText: 'Pet Name',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'Pet Name',
                            hintStyle: TextStyle(
                              fontFamily: 'Cosffira',
                              fontSize: 45.sp,
                              color: const Color.fromARGB(126, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD1D2D2),
                                width: 0.8, // Set the width of the border here
                              ),
                            )),
                      ),
                    ),
                    //2
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 5),
                      child: TextFormField(
                        controller: petTypeController,
                        onChanged: (value) {
                          setState(() {
                            widget.petInformation.petType = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontFamily: 'Cosffira',
                          fontSize: 50.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            // labelText: 'Pet Name',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'Pet species',
                            hintStyle: TextStyle(
                              fontFamily: 'Cosffira',
                              fontSize: 45.sp,
                              color: const Color.fromARGB(126, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD1D2D2),
                                width: 0.8, // Set the width of the border here
                              ),
                            )),
                      ),
                    ),
                    //3

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 10),
                      child: TextFormField(
                        controller: ageController,
                        onChanged: (value) {
                          setState(() {
                            widget.petInformation.age = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontFamily: 'Cosffira',
                          fontSize: 45.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 10),
                          // labelText: 'Pet Name',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Age',
                          hintStyle: TextStyle(
                            fontFamily: 'Cosffira',
                            fontSize: 45.sp,
                            color: const Color.fromARGB(126, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffD1D2D2),
                              width: .8, // Set the width of the border here
                            ),
                          ),
                        ),
                      ),
                    ),
                    // 4

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 10),
                      child: DropdownButtonFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        dropdownColor: const Color(0xffB8D8D4),
                        iconEnabledColor: const Color(0xffB8D8D4),
                        style: TextStyle(
                          fontFamily: 'Cosffira',
                          fontSize: 45.sp,
                          color: const Color(0xffF5F5F5),
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 10),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Gender',
                          hintStyle: TextStyle(
                            fontFamily: 'Cosffira',
                            fontSize: 45.sp,
                            color: const Color.fromARGB(126, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffD1D2D2),
                              width: .8, // Set the width of the border here
                            ),
                          ),
                        ),
                        value: _Selected,
                        items: _gender
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: (val) {
                          // Handle the onChanged event here
                          setState(() {
                            _Selected = val.toString();
                            widget.petInformation.petGender =
                                val!; // Update the selected value
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return _gender.map<Widget>((String item) {
                            return Text(
                              item,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 162, 192, 189)),
                            );
                          }).toList();
                        },
                      ),
                    ),

                    // 5
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 0),
                      child: TextFormField(
                        controller: weightController,
                        onChanged: (value) {
                          setState(() {
                            widget.petInformation.petWeight =
                                double.tryParse(value);
                          });
                        },

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontFamily: 'Cosffira',
                          fontSize: 45.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                        ),
                        //  to take only number
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            // labelText: 'Pet Name',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'Weight',
                            suffixText: 'In Kg',
                            suffixStyle: TextStyle(
                              fontFamily: 'Cosffira',
                              fontSize: 45.sp,
                              color: const Color.fromARGB(126, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                              fontFamily: 'Cosffira',
                              fontSize: 45.sp,
                              color: const Color.fromARGB(126, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD1D2D2),
                                width: 0.8, // Set the width of the border here
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    CustomGeneralButtom(
                      boxColor: const Color(0xff2A606C),
                      textColor: const Color(0xffFFFFFF),
                      height: 135.h,
                      width: 385.w,
                      borderColor: const Color.fromARGB(108, 112, 112, 112),
                      text: 'Save',
                      onTap: () async {
                        // Save changes and pop the page with updated information
                        if (_formKey.currentState!.validate()) {
                          widget.petInformation.petName =
                              petNameController.text;
                          widget.petInformation.petType =
                              petTypeController.text;
                          widget.petInformation.petGender = _Selected!;
                          widget.petInformation.age = ageController.text;
                          widget.petInformation.petWeight =
                              double.tryParse(weightController.text);
                          // petIsDogOrCat: selectedPetType!,

                          // Call the function to update pet information in Firestore
                          await updatePetInFirestore(
                              pet: widget.petInformation);
                          Navigator.pop(context, widget.petInformation);
                        }
                      },
                      fontWeight: FontWeight.w500,
                      customFontSize: 50.sp,
                    ),

                    // Conditional rendering of the shadowed container
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: showSecondContainer
          ? GestureDetector(
              onTap: () {
                setState(() {
                  showSecondContainer = false; // hide container when tapped
                });
              },
              child: Container(
                height: 165,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(208, 132, 162, 158),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 90,
                      blurRadius: 100,
                      offset: Offset(10, 100), // changes position of shadow
                    ),
                  ],
                ), // Customize as needed
                child: Center(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomGeneralButtom(
                      boxColor: const Color(0xffE3B1A8),
                      textColor: kMainColor,
                      height: 50,
                      width: 150,
                      borderColor: const Color(0xffE3B1A8),
                      customFontSize: 20,
                      // bord: 0.r,
                      fontWeight: FontWeight.normal,
                      text: 'Camera',
                      onTap: _selectImageFromCamera,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    CustomGeneralButtom(
                        boxColor: const Color.fromARGB(255, 132, 193, 187),
                        textColor: kMainColor,
                        height: 50,
                        width: 150,
                        // bord: 0.r,
                        borderColor: const Color(0xff80CBC4),
                        customFontSize: 20,
                        fontWeight: FontWeight.normal,
                        text: 'Gallery',
                        onTap: () {
                          _pickedImage(context);
                        })
                  ],
                )),
              ),
            )
          : const SizedBox(), // Hide the container initially
    );
  }
}
