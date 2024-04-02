import 'package:flutter/material.dart';

class DoctorBookingWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String percentage;

  const DoctorBookingWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 381,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 78,
            child: Container(
              width: 337,
              height: 303,
              decoration: ShapeDecoration(
                color: Color(0xFFDEF3F4),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.35),
                  ),
                  borderRadius: BorderRadius.circular(43),
                ),
              ),
            ),
          ),
          Positioned(
            left: 88,
            top: 0,
            child: Container(
              width: 162,
              height: 176,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 115.75,
            top: 256,
            child: SizedBox(
              width: 123.94,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '\n$percentage',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
