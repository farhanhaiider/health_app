import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/signup/confirmemail/controller/confirmemialcontroller.dart';

class ConfrimEmailScreen extends GetView<ConfirmEmailController> {
  ConfrimEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.confirmemailkey,
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
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 168, bottom: 120, left: 500, right: 500),
                            child: Column(
                              children: [
                                Image.asset(
                                  kconfirmemailimage,
                                  height: 200,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Confirm Your email Address',
                                  style: AppStyles.normalTextStyle(),
                                ),
                                Text(
                                  'we send a link to xyz @gmail.com ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.5099999904632568),
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  'Click on the link to confirm you email address.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.5099999904632568),
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: InfoWidget())
                        ]))))));
  }
}
