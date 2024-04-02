import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customtextfield.dart';
import 'package:health_app/views/screens/signup/patientsignup/controller/patientsignupcontroller.dart';

class PatientSignupScreen extends GetView<PatientSignupController> {
  PatientSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.PateintSignupkey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Colors.grey.withOpacity(0.3),
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Container(
                            height: _height * 0.1,
                            width: _width * 1,
                            color: Colors.white,
                            child: Row(children: [
                              const CircleAvatar(
                                radius: 51,
                                backgroundImage: AssetImage(
                                  'assets/images/logo.png',
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 214,
                                height: 51,
                                decoration: const ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1)),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Need help?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    kpatientsignupimg,
                                    height: 400,
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    'Create an Account',
                                    style: AppStyles.normalTextStyle(),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'MyHealhtMatch',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'is the best way to reach the\nright patients for your practice. Its easy to join\nand there are no up front fess or \nsubscription costs. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 35, left: 140),
                                child: Container(
                                  width: 774,
                                  height: 1022,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: AppStyles.normalTextStyle(),
                                      ),
                                      Customtextfield(),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'Email',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              Customtextfield(
                                                width: 350,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Email',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              Customtextfield(
                                                width: 350,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 42,
                                      ),
                                      Text(
                                        'Date of Birth',
                                        style: AppStyles.normalTextStyle(),
                                      ),
                                      Customtextfield(),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'Sex',
                                        style: AppStyles.normalTextStyle()
                                            .copyWith(fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Container(
                                        width: 254,
                                        height: 56.42,
                                        decoration: ShapeDecoration(
                                          color: Color(0x960497E9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Continue',
                                            style: AppStyles.normalTextStyle()
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ]))))));
  }
}
