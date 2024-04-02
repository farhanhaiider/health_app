import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/doctorbookingwidget.dart';
import 'package:health_app/views/screens/doctorbooking/controller/doctorbookingcontroller.dart';

class DoctorBookingScreen extends GetView<DoctorBookingController> {
  DoctorBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.doctorbookingkey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Color(0xFFDEF3F4),
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Container(
                              height: _height * 0.1,
                              width: _width * 1,
                              color: Color(0xFFDEF3F4),
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
                                        onTap: () {
                                          Get.toNamed(khospitalsroute);
                                        },
                                        child: Text(
                                          'Hospitals',
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
                                        'MyHealthMatch',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.4300000071525574),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
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
                                )
                              ])),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.arrow_back_ios_rounded),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 50,
                                          backgroundImage:
                                              AssetImage(kdoctorimg),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dr.Omer Hawasli, MD',
                                              style:
                                                  AppStyles.normalTextStyle(),
                                            ),
                                            Text(
                                              'Family Practitioner',
                                              style: AppStyles.normalTextStyle()
                                                  .copyWith(fontSize: 14),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: 545,
                                      height: 125,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFA7C5D0)),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 724,
                                  height: 915,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 70, left: 75, right: 200),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Book an Appointment for free',
                                          style: AppStyles.normalTextStyle()
                                              .copyWith(fontSize: 24),
                                        ),
                                        Text(
                                          'The office partners with My HealthAI to schedule appointments',
                                          style: AppStyles.normalTextStyle()
                                              .copyWith(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              kvdimg,
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'External video visit',
                                              style: AppStyles.normalTextStyle()
                                                  .copyWith(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          'Scheduling details',
                                          style: AppStyles.normalTextStyle(),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 449,
                                          height: 69,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1)),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 14,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Container(
                                          width: 449,
                                          height: 69,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1)),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 14,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Obx(() => Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: controller
                                                      .onContainer1Tap,
                                                  child: Container(
                                                    width: 214,
                                                    height: 40,
                                                    decoration: ShapeDecoration(
                                                      color: controller
                                                          .container1Color
                                                          .value,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: controller
                                                            .container1BorderSide
                                                            .value,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: controller
                                                      .onContainer2Tap,
                                                  child: Container(
                                                    width: 214,
                                                    height: 40,
                                                    decoration: ShapeDecoration(
                                                      color: controller
                                                          .container2Color
                                                          .value,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: controller
                                                            .container2BorderSide
                                                            .value,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Availible Appointment',
                                          style: AppStyles.normalTextStyle()
                                              .copyWith(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 220),
                            child: SizedBox(
                              width: _width * 0.7,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DoctorBookingWidget(
                                      imagePath: kbookingimg1,
                                      title: 'Resillence',
                                      percentage: '86%'),
                                  DoctorBookingWidget(
                                      imagePath: kbookingimg1,
                                      title: 'Communication Style',
                                      percentage: '67%'),
                                  DoctorBookingWidget(
                                      imagePath: kbookingimg1,
                                      title: 'Cultural Senstivity',
                                      percentage: '97%')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 1807,
                            height: 3206,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 350, top: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'About Dr.Omer Hawasli,MD',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  SizedBox(
                                    height: 31,
                                  ),
                                  Container(
                                    width: 860,
                                    height: 117,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 860,
                                            height: 117,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.18000000715255737),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 7,
                                            height: 117,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF2755B6)),
                                          ),
                                        ),
                                        Positioned(
                                          left: 32,
                                          top: 13,
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'New office safety precautions\n',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      'Message from the office of Dr.Omer\n',
                                                  style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(
                                                            0.3700000047683716),
                                                    fontSize: 13,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\n',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      '“Patient safety is our utmost priority at the Medical offices of Manhattan.Our staff has exercised diligent effort to\nmaximize..',
                                                  style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(
                                                            0.7200000286102295),
                                                    fontSize: 13,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '.show more',
                                                  style: TextStyle(
                                                    color: Color(0xFF0497E9),
                                                    fontSize: 13,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Dr.Omer is a reputed primary care doctor. He treats a host of common ailments and injuries at the Medical Offices of \nManhanttan in New york. He also does a variety of consultations and test..',
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(
                                                0.7099999785423279),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Show more',
                                          style: TextStyle(
                                            color: Color(0xFF0497E9),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 36,
                                  ),
                                  Text(
                                    'Is this doctor in your insurance network?',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  SizedBox(
                                    height: 36,
                                  ),
                                  Container(
                                    width: 444,
                                    height: 41,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black
                                              .withOpacity(0.30000001192092896),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 36,
                                  ),
                                  Text(
                                    'In- Network insurance',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  SizedBox(
                                      width: _width * 0.4,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            klogo1,
                                            scale: 3,
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            klogo2,
                                            scale: 3,
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                      width: _width * 0.4,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            klogo4,
                                            scale: 3,
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            klogo3,
                                            scale: 3,
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '200+ more in-network plans',
                                        style: AppStyles.normalTextStyle()
                                            .copyWith(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 52,
                                  ),
                                  Text(
                                    'Offline Location',
                                    style: AppStyles.normalTextStyle()
                                        .copyWith(fontSize: 18),
                                  ),
                                  Container(
                                      width: 756,
                                      height: 528,
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          )
                        ]))))));
  }
}
