import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class browseWidget extends StatelessWidget {
  const browseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 450,
        width: 418,
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              bottom: 7,
              child: Container(
                height: 333,
                width: 418,
                color: HexColor('#70BBD7'),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Text(
                        'Browse providers who take your insurance',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: HexColor('#000000'),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 180,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#0597EA'),
                        ),
                        child: Center(
                          child: Text(
                            'See Specialties',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: HexColor('#FFFFFF'),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Image.asset(
                'assets/images/browse.png',
                fit: BoxFit.contain, // Adjust the fit based on your requirement
                width: 380, // Adjust the width of the image
                height: 227, // Adjust the height of the image
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
