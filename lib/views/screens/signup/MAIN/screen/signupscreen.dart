import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/login/wireframe.dart';
import 'package:health_app/views/screens/signup/MAIN/controller/signupcontroller.dart';

class SignupScreen extends GetView<SignUpController> {
  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.signupkey,
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
                              width: _width * 0.9,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 51,
                                    backgroundImage: AssetImage(
                                      'assets/images/logo.png',
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(kPatientLoginRoute);
                                    },
                                    child: const Text(
                                      'Patient Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(kproviderloginroute);
                                    },
                                    child: const Text(
                                      'Provider Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
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
                                            builder: (context) => AlertDialog(
                                                content: wireFrame())),
                                      );
                                    },
                                    child: Container(
                                        width: 238,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6BC2F2),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Get Started',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        )),
                                  )
                                ],
                              )),
                          Container(
                            width: Get.width,
                            height: 473,
                            decoration: BoxDecoration(color: Color(0xFFDEF3F4)),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'The easiest way to \ngrow your practice',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 40,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        width: 238,
                                        height: 74,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6BC2F2),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Get Started',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1576,
                                height: 417,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.black
                                          .withOpacity(0.38999998569488525),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 510,
                                      height: 419,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF5ACFD4)),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'My Health is where patient find providers',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Image.asset(
                                            kHome,
                                            height: _height * 0.3,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 54,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Personalized Healthcare',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 35,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Grow your practice by using the power of \npersonalized healthcare from MyHealthMatch',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 60,
                                        ),
                                        Container(
                                            width: 238,
                                            height: 74,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF6BC2F2),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Get Started',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 450),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'MyHealthMatch for Private Practices and Health Systems\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Reach, manage and build patient loyalty',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 454,
                                  height: 455,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                            .withOpacity(0.4300000071525574),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 454,
                                        height: 230,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF5BCFD5),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Video Service \n\n',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      'See patients virtually with an integrated, HIPAA \ncompliant video experience.',
                                                  style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(
                                                            0.6000000238418579),
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Learn more',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              // textDecoration: TextDecoration.underline,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              Spacer(),
                              Container(
                                width: 955,
                                height: 413,
                                decoration:
                                    BoxDecoration(color: Color(0xFF72CBCC)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Container(
                              width: Get.width,
                              height: 1131,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDEF3F4)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, top: 50),
                                    child: Container(
                                        width: 540,
                                        height: 364,
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  )
                                ],
                              )),
                          InfoWidget()
                        ]))))));
  }
}
