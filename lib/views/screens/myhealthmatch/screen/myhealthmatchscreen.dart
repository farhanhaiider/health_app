import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/myhealthmatch/controller/myhealthmatchcomtroller.dart';

class MyHealthMatchScreen extends GetView<MyhealthMatchController> {
  const MyHealthMatchScreen({Key? key}) : super(key: key);

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
                              child: Row(children: [
                                const CircleAvatar(
                                  radius: 51,
                                  backgroundImage: AssetImage(
                                    'assets/images/logo.png',
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: _width * 0.5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hospitals',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.5099999904632568),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {},
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30),
                                            child: Column(
                                              children: [
                                                const Text(
                                                  'My Health Match',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 119,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 2,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                      Text(
                                        'Well Guide',
                                        style: TextStyle(
                                          color: Colors.black
                                              .withOpacity(0.5099999904632568),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        'Past appointnments',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      Container(
                                          width: 199,
                                          height: 33,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          decoration: const ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1)),
                                          ),
                                          child: Row()),
                                    ],
                                  ),
                                ),
                              ])),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 90, left: 230, right: 250, bottom: 100),
                            child: Column(
                              children: [
                                Container(
                                  width: 1228,
                                  height: 418,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFDEF3F4),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 80,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 412,
                                          height: 200,
                                          decoration:
                                              const BoxDecoration(color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          width: 412,
                                          height: 394,
                                          decoration:
                                              BoxDecoration(color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          width: 412,
                                          height: 251,
                                          decoration:
                                              const BoxDecoration(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                      width: 771,
                                      height: 712,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.4)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const InfoWidget()
                        ]))))));
  }
}
