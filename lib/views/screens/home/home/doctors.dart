import 'package:flutter/material.dart';
import 'package:health_app/views/screens/home/home/custom_widgets/docnames.dart';
import 'package:hexcolor/hexcolor.dart';

class Doctors extends StatelessWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.9,
      width: _width * 1,
      color: HexColor('#CBF3F5'),
      child: Column(
        children: [
          Text(
            'Highly Recommended Doctors',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 40,
              color: HexColor('#000000'),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          docNames()
        ],
      ),
    );
  }
}
