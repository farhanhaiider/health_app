import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/views/custom_widgets/customtextfield.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/login/providerlogin/controller/providerlogincontroller.dart';

class ProviderLoginScreen extends GetView<ProviderLoginController> {
  ProviderLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.providerloginkey,
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
                          SizedBox(
                            width: _width * 0.9,
                            child: Row(
                              children: [
                                Image.asset(
                                  kpatientloginpic,
                                  scale: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 130,
                                      right: 120,
                                      left: 25,
                                      bottom: 100),
                                  child: Container(
                                    width: _width * 0.52,
                                    height: _height * 0.6,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1.50)),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text('Log in',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 26,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 45),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Email address',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Customtextfield(),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                'Email address',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Customtextfield(
                                                sufixxIcon:
                                                    Icons.remove_red_eye,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 50),
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.toNamed(Kpracticehelproute);
                                            },
                                            child: Container(
                                              width: 229,
                                              height: 58,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF4D91A8),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Log in',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 21,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Forget your password?',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xE80037FA),
                                            fontSize: 21,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xE80037FA),
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InfoWidget()
                        ]))))));
  }
}
