import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customtextfield1.dart';
import 'package:health_app/views/screens/performance/controller/performancecontroller.dart';
import 'package:health_app/views/screens/practiceinformation/controller/practiceinformationcontroller.dart';

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
                                          width: 765,
                                          height: 343,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1)),
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
