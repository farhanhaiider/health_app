import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/hospitals/controller/hospitalscontroller.dart';

class HospitalsScreen extends GetView<HospitalsController> {
  HospitalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.hospitalskey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Colors.white,
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Container(
                              height: _height * 0.1,
                              width: _width * 1,
                              color: Colors.white,
                              child: Row(children: [
                                CircleAvatar(
                                  radius: 51,
                                  backgroundImage: AssetImage(
                                    'assets/images/logo.png',
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: _width * 0.5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                          onTap: () {},
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Hospitals',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 119,
                                                  decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 2,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(kmyhealthmatchroute);
                                        },
                                        child: Text(
                                          'MyHealthMatch',
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(
                                                0.4300000071525574),
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Well Guide',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.5099999904632568),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        'Past appointnments',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      Container(
                                          width: 199,
                                          height: 33,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1)),
                                          ),
                                          child: Row()),
                                    ],
                                  ),
                                ),
                              ])),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              khospitalimage,
                              scale: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 30),
                            child: Container(
                              width: 1649,
                              height: 572,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.black
                                        .withOpacity(0.3199999928474426),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 50, horizontal: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Top Hospitals in California ',
                                          style: AppStyles.normalTextStyle()
                                              .copyWith(fontSize: 20),
                                        ),
                                        Spacer(),
                                        Text(
                                          'View all ',
                                          style: TextStyle(
                                            color: Color(0xFF0024A7),
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: _width * 0.8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: _width * 0.8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: _width * 0.8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 415,
                                            height: 85,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.14000000059604645),
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'UCSF Medical Center, San Francisco',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InfoWidget()
                        ]))))));
  }
}
