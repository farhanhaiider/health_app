import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/login/practicehelp/controller/practicehelpcontroller.dart';

class PracticehelpScreen extends GetView<PracticeHelpController> {
  PracticehelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.practicehelpkey,
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
                                CircleAvatar(
                                  radius: 51,
                                  backgroundImage: AssetImage(
                                    'assets/images/logo.png',
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 214,
                                  height: 51,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1)),
                                  ),
                                  child: Center(
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
                                )
                              ])),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 100, left: 430, right: 430),
                                child: Text(
                                  'How can MyHealthMatch help your practice',
                                  style: AppStyles.normalTextStyle()
                                      .copyWith(fontSize: 42),
                                ),
                              ),
                              Text(
                                'Select all that apply.Your selections will help us recommend the right \nmatchhealth products for your needs.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 90, vertical: 110),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 250.46,
                                      height: 312,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1.50)),
                                      ),
                                    ),
                                    Container(
                                      width: 297,
                                      height: 312,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1.50)),
                                      ),
                                    ),
                                    Container(
                                      width: 341,
                                      height: 312,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1.50)),
                                      ),
                                    ),
                                    Container(
                                      width: 372,
                                      height: 312,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1.50)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(kwelcomeroute);
                                },
                                child: Container(
                                  width: 217.84,
                                  height: 73.79,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4D91A8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Get Started',
                                      style: AppStyles.normalTextStyle()
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Why do we ask this?',
                                style: AppStyles.normalTextStyle(),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          InfoWidget()
                        ]))))));
  }
}
