import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customtextfield1.dart';
import 'package:health_app/views/screens/moreinfo/controller/moreinfocontroller.dart';

class MoreInfoScreen extends GetView<MoreInfoController> {
  MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.moreinfokey,
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
                                    'Great ! We need a little more\ninformation for your profile ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  SizedBox(
                                      width: _width * 0.8,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('The Basics',
                                                  style: AppStyles
                                                          .normalTextStyle()
                                                      .copyWith(fontSize: 30)),
                                              SizedBox(
                                                height: 50,
                                              ),
                                              SizedBox(
                                                width: _width * 0.38,
                                                child: Row(children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'First Name',
                                                        style: AppStyles
                                                            .normalTextStyle(),
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Last Name',
                                                        style: AppStyles
                                                            .normalTextStyle(),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      CustomTextField1(
                                                        width: 350,
                                                      ),
                                                    ],
                                                  ),
                                                ]),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Text(
                                                'Gender',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),

                                              Obx(
                                                () => radiolist(
                                                    "Male",
                                                    0,
                                                    controller
                                                        .selectedgenderValue
                                                        .value,
                                                    controller
                                                        .selectedgenderValue
                                                        .value),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ), // Pass _selectedValue as selectedValue
                                              Obx(
                                                () => radiolist(
                                                    "Female",
                                                    1,
                                                    controller
                                                        .selectedgenderValue
                                                        .value,
                                                    controller
                                                        .selectedgenderValue
                                                        .value),
                                              ), // Pass _selectedValue as selectedValue
                                              SizedBox(
                                                height: 50,
                                              ),
                                              Text(
                                                'Linked In',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              CustomTextField1()
                                            ],
                                          ),
                                          Spacer(),
                                          SizedBox(
                                            height: _height * 0.5,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 431,
                                                  height: 187,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 1)),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 429,
                                                        height: 50,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color:
                                                              Color(0x6D6BC2F2),
                                                          shape: RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                  width: 1)),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Personality Assesment',
                                                            style: AppStyles
                                                                .normalTextStyle(),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  width: 431,
                                                  height: 187,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 1)),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 429,
                                                        height: 50,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color:
                                                              Color(0x6D6BC2F2),
                                                          shape: RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                  width: 1)),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Perform Claim',
                                                            style: AppStyles
                                                                .normalTextStyle(),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
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
                                                Get.toNamed(kprovidermainroute);
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

  radiolist(String title, int value, int groupvalue, int selectedValue) {
    return SizedBox(
      height: 20,
      width: 200,
      child: RadioListTile<int>(
        title: Text(title),
        value: value,
        groupValue: groupvalue,
        onChanged: (int? value) {
          selectedValue = value!;
        },
      ),
    );
  }
}
