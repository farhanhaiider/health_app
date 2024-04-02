import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Catagory extends StatelessWidget {
  const Catagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465,
      width: 385,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2), // Shadow color
          spreadRadius: 5, // Spread radius
          blurRadius: 5, // Blur radius
          offset: Offset(2, 2), // Offset from top-left
        ),
      ], borderRadius: BorderRadius.circular(15), color: HexColor('#39A0C8')),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Center(
              child: SizedBox(
                  height: 146,
                  width: 175,
                  child: Image.asset('assets/images/doctor.png')),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Chat with doctor',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 36,
              color: HexColor('#000000'),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'You can connect directly, quickly and\n easily, and there is no need to doubt\n the quality of the consultation and\n treatment offered.',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: HexColor('#000000'),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
