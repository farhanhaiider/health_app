import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';

class wireFrame extends StatelessWidget {
  const wireFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1768,
      height: 1158,
      decoration: ShapeDecoration(
        color: Color(0xFFC6F2F4),
        shape: RoundedRectangleBorder(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    kdialogimage,
                    height: 150,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(kpatientsignuproute);
                    },
                    child: Container(
                      width: 464.05,
                      height: 85.21,
                      decoration: ShapeDecoration(
                        color: Color(0xFFCBF3F5),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(
                        'Sign up As Patient',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 250,
              ),
              Column(
                children: [
                  Image.asset(
                    kdialogimage,
                    height: 150,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(kProviderSignUpRoute);
                    },
                    child: Container(
                      width: 464.05,
                      height: 85.21,
                      decoration: ShapeDecoration(
                        color: Color(0xFFCBF3F5),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(
                        'Sign up As Provider',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 120,
          ),
          Container(
            width: 500,
            height: 59,
            decoration: ShapeDecoration(
              color: Color(0xFF4D91A8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFCBF3F5),
                fontSize: 37,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
