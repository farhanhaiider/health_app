import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customtextfield.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/signup/signupassword/controller/providerpasswordcontroller.dart';

class ProviderSigupPassswordScreen
    extends GetView<ProviderSignUpPasswordController> {
  ProviderSigupPassswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.providerSignupasswordkey,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 162),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      kproviderpasswordimage,
                                      height: 150,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Let's get Started",
                                      style: AppStyles.normalTextStyle(),
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' is the best way to reach the\nright patients for your practice. Its easy to join\nand there are no up front fess or \nsubscription costs. ',
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 100, left: 50, right: 70),
                                child: Container(
                                    width: 1036,
                                    height: 787,
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Create your Password',
                                          style: AppStyles.normalTextStyle(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 84,
                                              left: 130,
                                              bottom: 40,
                                              right: 65),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Password',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Customtextfield(
                                                sufixxIcon: Icons
                                                    .remove_red_eye_rounded,
                                              )
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(kconfirmeailroute);
                                          },
                                          child: Container(
                                            width: 225,
                                            height: 55.71,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF4D91A8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'NEXT',
                                                style:
                                                    AppStyles.normalTextStyle()
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                'Already have an account?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'log in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF159AE5),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFF159AE5),
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                          InfoWidget()
                        ]))))));
  }
}
