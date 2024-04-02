import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/myhealthmatch/controller/myhealthmatchcomtroller.dart';

class ProviderMainScreen extends GetView<MyhealthMatchController> {
  const ProviderMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.myhealthmatchkey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Color(0xFFF7F8F9),
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Container(
                              height: _height * 0.1,
                              width: _width * 1,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 122,
                                    height: 29,
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6399999856948853),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 122,
                                    height: 29,
                                    child: Text(
                                      'Calendar',
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6399999856948853),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 122,
                                    height: 29,
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed('');
                                      },
                                      child: Text(
                                        'Inbox',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.6399999856948853),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 122,
                                    height: 29,
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(kperformanceroute);
                                      },
                                      child: Text(
                                        'Performance',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.6399999856948853),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 122,
                                    height: 29,
                                    child: Text(
                                      'Providers and Staff',
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6399999856948853),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            width: 527,
                            child: Text(
                              'Welcome! Let’s set you up for success, Stein and Associate-Ped Care',
                              style: AppStyles.normalTextStyle(),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Providers and provider resources',
                                style: AppStyles.normalTextStyle()
                                    .copyWith(fontSize: 20),
                              ),
                              Image.asset(
                                kmarkimg,
                                scale: 5,
                              ),
                              Spacer(),
                              SizedBox(
                                width: _width * 0.3,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 300,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                'Search by provider staff name',
                                            prefixIcon: Icon(Icons.search),
                                            filled: true,
                                            fillColor: Colors.grey[200],
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 10.0),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 81,
                                        height: 31,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text('Role'),
                                        ),
                                      ),
                                      Container(
                                        width: 81,
                                        height: 31,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text('Status'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 99,
                                    height: 52,
                                    decoration:
                                        BoxDecoration(color: Color(0x77D9D9D9)),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Status',
                                      ),
                                      Image.asset(
                                        kmarkimg,
                                        scale: 5,
                                        // color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'My Health Match Score',
                                      ),
                                      Image.asset(
                                        kmarkimg,
                                        scale: 5,
                                        // color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Date Added',
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: Get.width,
                              height: _height * 0.5,
                              decoration:
                                  BoxDecoration(color: Color(0x72D9D9D9)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    kpatientsignupimg,
                                    height: 250,
                                  ),
                                  SizedBox(
                                    width: 569,
                                    height: 71,
                                    child: Text(
                                      'you don’t have any providers yet',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.6000000238418579),
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(kaddnewproviderroute);
                                    },
                                    child: Container(
                                      width: 311,
                                      height: 97,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF6FA5B9)),
                                      child: Center(
                                        child: Text(
                                          'Add a Provider',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Administrative Staff',
                                style: AppStyles.normalTextStyle()
                                    .copyWith(fontSize: 20),
                              ),
                              Image.asset(
                                kmarkimg,
                                scale: 5,
                                // color: Colors.grey,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 99,
                                    height: 52,
                                    decoration:
                                        BoxDecoration(color: Color(0x77D9D9D9)),
                                  ),
                                  const Text(
                                    'Date Added',
                                  ),
                                ]),
                          ),
                          Divider(),
                          SizedBox(
                            height: 200,
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 50),
                              child: Container(
                                width: 311,
                                height: 97,
                                decoration:
                                    BoxDecoration(color: Color(0xFF6FA5B9)),
                                child: Center(
                                  child: Text(
                                    'Add Addministrative Staff',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InfoWidget()
                        ]))))));
  }
}
