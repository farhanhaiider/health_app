import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customtextfield1.dart';
import 'package:health_app/views/screens/practiceinformation/controller/practiceinformationcontroller.dart';

class PracticeInformationScreen extends GetView<PracticeInformationController> {
  PracticeInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.practiceinformationkey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Colors.white,
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 70, horizontal: 60),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Add a new Provider',
                                    style: AppStyles.normalTextStyle()
                                        .copyWith(fontSize: 23),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(children: [
                                    Text(
                                      'Add a new Provider',
                                      style: AppStyles.normalTextStyle()
                                          .copyWith(fontSize: 23),
                                    ),
                                    Text(
                                      'Optional',
                                      style: AppStyles.simpletextstyle(),
                                    ),
                                  ]),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomTextField1(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Administractive Contact',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  SizedBox(
                                    width: 606,
                                    height: 43,
                                    child: Text(
                                      'Tell us who to contact for your work hours. We’ll reach out to finish adding your profile to your practice’s account.',
                                      style: AppStyles.simpletextstyle(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: _width * 0.38,
                                    child: Row(children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'First Name',
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          CustomTextField1(
                                            width: 350,
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Last Name',
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          CustomTextField1(
                                            width: 350,
                                          )
                                        ],
                                      ),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Job title ',
                                          style: AppStyles.normalTextStyle(),
                                        ),
                                        TextSpan(
                                            text: 'optional',
                                            style: AppStyles.simpletextstyle()),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  CustomTextField1(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Email Address',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  CustomTextField1(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: _width * 0.38,
                                    child: Row(children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Phone Number',
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          CustomTextField1(
                                            width: 450,
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ext ',
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          CustomTextField1(
                                            width: 200,
                                          ),
                                        ],
                                      ),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    'Professional Imformation',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: 606,
                                      height: 43,
                                      child: Text(
                                        'This information helps us set uo your profile to show up in search for right patients',
                                        style: AppStyles.simpletextstyle(),
                                      )),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Education",
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  SizedBox(
                                      width: 606,
                                      height: 43,
                                      child: Text(
                                          'Enter the institution where you obtained your primary medical education. you can always add residencies, fellowships and other education later.',
                                          style: AppStyles.simpletextstyle())),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "University",
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  CustomTextField1(),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Degree",
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  CustomTextField1(),
                                  SizedBox(
                                      width: _width * 0.2,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Container(
                                                width: 175,
                                                height: 60,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF4D91A8),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: Center(
                                                    child: SizedBox(
                                                  width: 112,
                                                  height: 27,
                                                  child: Text(
                                                    'Back',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                )),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Get.toNamed(kmoreinforoute);
                                              },
                                              child: Container(
                                                width: 175,
                                                height: 60,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF4D91A8),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                                child: Center(
                                                    child: SizedBox(
                                                  width: 112,
                                                  height: 27,
                                                  child: Text(
                                                    'Submit',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                )),
                                              ),
                                            ),
                                          ])),
                                ])))))));
  }
}
