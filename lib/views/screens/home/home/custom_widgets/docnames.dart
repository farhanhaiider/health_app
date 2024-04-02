import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class docNames extends StatelessWidget {
  const docNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 363,
          width: 390,
          decoration: BoxDecoration(
            color: HexColor('#DEF3F4'),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/doc1.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Text(
          'Justin Beckham',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: HexColor('#000000'),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Psychiatrist',
          style: TextStyle(
            fontFamily: 'Poppins',
            // fontWeight: FontWeight.w300,
            fontSize: 24,
            color: HexColor('#000000'),
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          width: 280.83,
          height: 57.88,
          decoration: ShapeDecoration(
            color: Color(0xFF4D91A8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: [
              BoxShadow(
                color: Color(0xC1464C4B),
                blurRadius: 4,
                offset: Offset(4, 3),
                spreadRadius: 0,
              )
            ],
          ),
        )
      ],
    );
  }
}
