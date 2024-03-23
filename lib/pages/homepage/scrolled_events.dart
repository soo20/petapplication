import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrolledEvents extends StatefulWidget {
  const ScrolledEvents({super.key, eventHeight});
  @override
  State<ScrolledEvents> createState() => _ScrolledEvents();
}

late double eventHeight;
late Size size;

class _ScrolledEvents extends State<ScrolledEvents> {
  @override
  Widget build(BuildContext context) {
    eventHeight = MediaQuery.of(context).size.height * 0.20 - 40;
    size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        height: eventHeight, // Set a fixed height for the cards
        margin: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 8.0,
        ),
        child: FittedBox(
          fit: BoxFit.fill,
          //this is might be cause of overflow
          child: Row(
            children: [
              // this will be dynamic coloumn that depends on the length of list
              for (var i in Pets.petsInformationList) buildEventCard(i)
            ],
          ),
        ),
      ),
    );
  }
}

class Pets {
  Pets({
    required this.imageUrl,
    required this.eventTitle,
    required this.eventDate,
    required this.petName,
    required this.petType,
  });
  late String imageUrl;
  late String eventTitle;
  late String eventDate;
  late String petName;
  late String petType;

  static List<Pets> petsInformationList = [
    Pets(
      imageUrl:
          'assets/image/home_page_afterAdding_pets_assets/dog_for_events.png',
      eventTitle: 'Picnic With Dog',
      eventDate: 'Sat, Jule24 ,9:00',
      petName: 'Max',
      petType: 'dog',
    ),
    Pets(
      imageUrl:
          'assets/image/home_page_afterAdding_pets_assets/cat_for_events.png',
      eventTitle: 'Go To Vet',
      eventDate: 'Sat, Jule26 ,1:00',
      petName: 'Luna',
      petType: 'cat',
    ),
    Pets(
      imageUrl:
          'assets/image/home_page_afterAdding_pets_assets/dog_for_events.png',
      eventTitle: 'Picnic With Dog',
      eventDate: 'Sat, Jule24 ,9:00',
      petName: 'Max',
      petType: 'dog',
    ),
    Pets(
      imageUrl:
          'assets/image/home_page_afterAdding_pets_assets/cat_for_events.png',
      eventTitle: 'Go To Vet',
      eventDate: 'Sat, Jule26 ,1:00',
      petName: 'Luna',
      petType: 'cat',
    ),
  ];
}

Widget buildEventCard(Pets petInformation) {
  return Container(
    height: eventHeight,
    margin: EdgeInsets.only(right: size.width * 0.001),
    child: Card(
      color: petInformation.petType == 'cat'
          ? const Color(0xffE3B1A8)
          : const Color(0xffB8D8D4),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36.0.r),
        side: BorderSide(
          color: const Color(0xff707070), // Set the border color
          width: 1.0.w, // Set the border width
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                      top: size.height * 0.002,
                      bottom: size.height * 0.0,
                      right: size.width * 0.0,
                    ),
                    child: Text(
                      petInformation.eventTitle,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Cosffira',
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.015,
                      top: size.height * 0.0,
                    ),
                    child: Text(
                      textAlign: TextAlign.justify,
                      petInformation.eventDate,
                      style: TextStyle(
                        fontFamily: 'Cosffira',
                        fontSize: size.width * 0.048,
                        fontWeight: FontWeight.w100,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  SizedBox(
                    height: size.height * 0.035,
                    width: size.width * 0.230,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(
                            Size(size.width * 0.157, size.height * 0.55)),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontFamily: 'Cosffira',
                            fontSize: size.width * 0.039,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        foregroundColor:
                            const MaterialStatePropertyAll(Color(0xff2A606C)),
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 248, 241, 227),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(petInformation.petName),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 90.w,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: size.height * 0.0,
                  right: size.width * 0.0,
                ),
                child: Image(
                  image: AssetImage(
                    petInformation.imageUrl,
                  ),
                  width: size.width * 0.323,
                  height: size.height * 0.135,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}