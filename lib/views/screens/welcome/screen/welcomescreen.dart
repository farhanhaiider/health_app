import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/welcome/controler/welcomecontroller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.welcomekey,
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
                            width: _width * 1,
                            color: Colors.white,
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 51,
                                  backgroundImage: AssetImage(
                                    'assets/images/logo.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  'Home',
                                  style: TextStyle(color: Colors.black),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 292.37,
                                    height: 64.70,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 8.37,
                                          top: 0,
                                          child: Container(
                                            width: 284,
                                            height: 64.70,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF095D7E),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(17),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 23.37,
                                          top: 21,
                                          child: Container(
                                            width: 20,
                                            height: 22,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0)),
                                            child: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [],
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 0,
                                          top: 16.65,
                                          child: SizedBox(
                                            width: 180.89,
                                            height: 26.15,
                                            child: Text(
                                              'Log In',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width,
                            height: 473,
                            decoration: BoxDecoration(
                              color: Color(0xFFDEF3F4),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 80, right: 200),
                              child: Row(
                                children: [
                                  Image.asset(
                                    kwelcomeimage,
                                    scale: 5,
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Doc, Welcome to MyHealthMatch\n',
                                        style: AppStyles.normalTextStyle()
                                            .copyWith(fontSize: 40),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      SizedBox(
                                          width: 550,
                                          child: Text(
                                            'MyHealhtMatch helps you bring in more  new patients and keep  them coming back - while saving your practice valuable time.',
                                            style: AppStyles.normalTextStyle()
                                                .copyWith(fontSize: 16),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Respond to the storylines below to identify your personality match with patients',
                            style: AppStyles.normalTextStyle()
                                .copyWith(fontSize: 30),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 434,
                            height: 300.17,
                            decoration: ShapeDecoration(
                              color: Colors.green,
                              // image: DecorationImage(
                              //   image: NetworkImage(
                              //       "https://via.placeholder.com/434x300"),
                              //   fit: BoxFit.fill,
                              // ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 434,
                            height: 300.17,
                            decoration: ShapeDecoration(
                              color: Colors.green,
                              // image: DecorationImage(
                              //   image: NetworkImage(
                              //       "https://via.placeholder.com/434x300"),
                              //   fit: BoxFit.fill,
                              // ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 434,
                            height: 300.17,
                            decoration: ShapeDecoration(
                              color: Colors.green,
                              // image: DecorationImage(
                              //   image: NetworkImage(
                              //       "https://via.placeholder.com/434x300"),
                              //   fit: BoxFit.fill,
                              // ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 50),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(kprovidermainroute);
                                  },
                                  child: Container(
                                    width: 182,
                                    height: 53,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: Text(
                                      'Skip',
                                      style: AppStyles.normalTextStyle(),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 182,
                                  height: 53,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(5),
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
