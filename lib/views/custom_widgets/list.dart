import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CatagoryList extends StatelessWidget {
  final String imagePath;
  final String text;

  const CatagoryList({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 306,
          width: 356,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(imagePath),
              alignment: Alignment.center,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: HexColor('#000000'),
          ),
        ),
      ],
    );
  }
}
