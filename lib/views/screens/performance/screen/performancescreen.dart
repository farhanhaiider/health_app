import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/screens/performance/controller/performancecontroller.dart';

class PerformanceScreen extends GetView<PerformanceController> {
  PerformanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.performancekey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Colors.white,
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 70, horizontal: 60),
                            child: Column(children: [
                              Center(
                                child: Text(
                                  'Performance since last statement',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 31,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 100, left: 130, right: 200),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 786,
                                          height: 343,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 19,
                                                top: 0,
                                                child: Container(
                                                  width: 765,
                                                  height: 343,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 1)),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 374,
                                                top: 199,
                                                child: Text(
                                                  '0',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 374,
                                                top: 253,
                                                child: Text(
                                                  '0',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 374,
                                                top: 227,
                                                child: Text(
                                                  '0',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 122,
                                                child: SizedBox(
                                                  width: 237,
                                                  height: 28,
                                                  child: Text(
                                                    'View details',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF0497E9),
                                                      fontSize: 16,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 190,
                                                top: 30,
                                                child: Container(
                                                  width: 29,
                                                  height: 27,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0.45,
                                                        child: Container(
                                                          width: 29,
                                                          height: 26.10,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Color(
                                                                0xFFEFEFEF),
                                                            shape: OvalBorder(
                                                              side: BorderSide(
                                                                  width: 1,
                                                                  color: Color(
                                                                      0xC1464C4B)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 11.23,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 7.02,
                                                          height: 27,
                                                          child: Text(
                                                            '!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xC1464C4B),
                                                              fontSize: 17,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 277,
                                                top: 202,
                                                child: Container(
                                                  width: 16,
                                                  height: 17,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0.28,
                                                        child: Container(
                                                          width: 16,
                                                          height: 16.43,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape: OvalBorder(
                                                                side:
                                                                    BorderSide(
                                                                        width:
                                                                            1)),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 6.19,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 3.87,
                                                          height: 17,
                                                          child: Text(
                                                            '!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 212,
                                                top: 255,
                                                child: Container(
                                                  width: 16,
                                                  height: 17,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0.28,
                                                        child: Container(
                                                          width: 16,
                                                          height: 16.43,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape: OvalBorder(
                                                                side:
                                                                    BorderSide(
                                                                        width:
                                                                            1)),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 6.19,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 3.87,
                                                          height: 17,
                                                          child: Text(
                                                            '!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 299,
                                                top: 227,
                                                child: Container(
                                                  width: 16,
                                                  height: 17,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0.28,
                                                        child: Container(
                                                          width: 16,
                                                          height: 16.43,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape: OvalBorder(
                                                                side:
                                                                    BorderSide(
                                                                        width:
                                                                            1)),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 6.19,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 3.87,
                                                          height: 17,
                                                          child: Text(
                                                            '!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 496,
                                                top: 122,
                                                child: Container(
                                                  width: 198,
                                                  height: 201.35,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 198,
                                                          height: 201.35,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Color(
                                                                0xADD9D9D9),
                                                            shape: OvalBorder(),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 39.60,
                                                        top: 40.93,
                                                        child: Container(
                                                          width: 119.61,
                                                          height: 118.68,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape: OvalBorder(),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 19,
                                                top: 0,
                                                child: Container(
                                                  width: 767,
                                                  height: 12,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF6BC2F2)),
                                                ),
                                              ),
                                              Positioned(
                                                left: 24,
                                                top: 27,
                                                child: Text(
                                                  'Total bookings',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 30,
                                                top: 201,
                                                child: Text(
                                                  'New patient bookings from MY Health',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 30,
                                                top: 254,
                                                child: Text(
                                                  'Booking from your website ',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 30,
                                                top: 226,
                                                child: Text(
                                                  'Existing patient bookings from My Health',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 30,
                                                top: 62,
                                                child: Text(
                                                  '0',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 63,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 405,
                                                top: 203,
                                                child: Container(
                                                  width: 8,
                                                  height: 7,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF0563CD),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 405,
                                                top: 260,
                                                child: Container(
                                                  width: 8,
                                                  height: 7,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF86DBF6),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 405,
                                                top: 234,
                                                child: Container(
                                                  width: 8,
                                                  height: 7,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF11A8E3),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 557,
                                          height: 343,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1)),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'What do your patients think?',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              width: 765,
                                              height: 251,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'What is your new  patient value?',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              width: 555,
                                              height: 251,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'How much did you spend?',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              width: 455,
                                              height: 251,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'What was your booking breakdown?',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              width: 891,
                                              height: 251,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'When were your bokkings made?',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              width: 900,
                                              height: 251,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Who were your last bookings?',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              width: 455,
                                              height: 251,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(width: 1)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 220.29,
                                            height: 75.79,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF4D91A8)),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ])))))));
  }
}
