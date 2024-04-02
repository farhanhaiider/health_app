import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/availdoctor.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/doctoravailibility/controller/doctoravailibility.dart';

class DoctorAvailibilityScreen extends GetView<DoctorAvailibiltyController> {
  DoctorAvailibilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.doctoravaililibilitykey,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 51,
                                      backgroundImage: AssetImage(
                                        'assets/images/logo.png',
                                      ),
                                    ),
                                    Container(
                                      width: 745.89,
                                      height: 31.99,
                                      decoration: ShapeDecoration(
                                        color: Colors.white
                                            .withOpacity(0.9599999785423279),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1)),
                                      ),
                                    ),
                                    Text(
                                      'Hospitals',
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.4300000071525574),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'MyHealthMatch\n',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
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
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1)),
                                        ),
                                        child: Row())
                                  ])),
                          SizedBox(
                            width: _width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 107,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: _width * 0.58,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' 1,653 Providers',
                                      style: AppStyles.normalTextStyle()
                                          .copyWith(fontSize: 21),
                                    ),
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 50,
                                ),
                                AvailDoctor(),
                                SizedBox(
                                  height: 50,
                                ),
                                AvailDoctor(),
                                SizedBox(
                                  height: 50,
                                ),
                                AvailDoctor(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          InfoWidget()
                        ]))))));
  }
}
