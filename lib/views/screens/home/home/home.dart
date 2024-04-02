import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/controller/homecontroller.dart';
import 'package:health_app/views/screens/home/home/custom_widgets/docnames.dart';
import 'package:health_app/views/screens/login/wireframe.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: controller.homekey,
      body: Center(
        child: Container(
          width: _width * 0.95,
          height: _height * 1,
          color: Colors.white,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: _height * 0.1,
                width: _width * 1,
                color: Colors.white,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 51,
                      backgroundImage: AssetImage(
                        'assets/images/logo.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(kSignUpRoute);
                      },
                      child: Container(
                        width: 138.97,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF6BC2F2)),
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AlertDialog(content: wireFrame())),
                        );
                      },
                      child: Container(
                        width: 292.37,
                        height: 64.70,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 8.37,
                              top: 0,
                              child: Container(
                                width: 284,
                                height: 64.70,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF095D7E),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 23.37,
                              top: 21,
                              child: Container(
                                width: 20,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 16.65,
                              child: SizedBox(
                                width: 180.89,
                                height: 26.15,
                                child: Text(
                                  'Log In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: _height * 0.85,
                        width: _width * 0.47,
                        decoration: BoxDecoration(
                          color: HexColor('#DEF3F4'),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/doc.png',
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Container(
                        height: _height * 0.85,
                        width: _width * 0.48,
                        decoration: BoxDecoration(
                          color: HexColor('#095D7E'),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(left: 45, right: 26, top: 72),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FIND PEDIATRICIANS, OBSTETRICIANS AND GYNECOLOGISTS PERSONALIZED FOR YOUR HEALTHCARE NEEDS',
                                style: TextStyle(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 39,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 762.05,
                                height: 72.68,
                                child: Text(
                                  'Fostering Individualized Treatment (FIT) to \nlower the infant and maternal mortality rates in women of color',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 663,
                    left: 202,
                    child: Container(
                      height: 67,
                      width: 1288,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(kdoctoravailibilityroute);
                            },
                            child: Container(
                              width: 100.75,
                              height: 44.08,
                              decoration: ShapeDecoration(
                                color: Color(0xFFE6E6E6),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    kdetectimage,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 51.45,
                                    height: 22.04,
                                    child: Text(
                                      'Detect',
                                      style: TextStyle(
                                        color: Color(0xFF1E1E1E),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: _height * 1.5,
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
                    SizedBox(
                      width: _width * 0.8,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              docNames(),
                              SizedBox(
                                height: _height * 0.3,
                              ),
                              docNames()
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              docNames(),
                              SizedBox(
                                height: _height * 0.3,
                              ),
                              docNames()
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 550,
                width: _width * 1,
                color: Colors.white,
                child: SizedBox(
                  height: 0.3,
                  child: Center(
                    child: const Column(
                      children: [
                        Text(
                          'Newsletter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xB2095D7E),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                            letterSpacing: 0.10,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'JOIN US',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF252B42),
                            fontSize: 40,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                            letterSpacing: 0.10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InfoWidget()
            ]),
          ),
        ),
      ),
    );
  }
}
