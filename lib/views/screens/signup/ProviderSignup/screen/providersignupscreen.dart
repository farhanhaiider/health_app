import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customtextfield.dart';
import 'package:health_app/views/custom_widgets/infowidget.dart';
import 'package:health_app/views/screens/signup/ProviderSignup/controller/providersignupcontroller.dart';

class ProviderSigupScreen extends GetView<ProviderSignUpController> {
  ProviderSigupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.ProviderSignupkey,
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
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(kprovidersignupimage),
                                fit:
                                    BoxFit.cover, // or specify your desired fit
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    child: Container(
                                      width: 679,
                                      height: 471,
                                      decoration: BoxDecoration(
                                          color: Color(0xB7D9D9D9)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lets’s get started',
                                              style: TextStyle(
                                                color: Color(0xA50029BC),
                                                fontSize: 60,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text(
                                              'MyHealhtMatch is the best way to \nreach the right patients for your practice. \nIts easy to join\nand there are no up front fess or \nsubscription costs. ',
                                              style: TextStyle(
                                                color: Color(0xFF0024A7),
                                                fontSize: 30,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 774,
                                    height: 1150,
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 63, left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'First Name',
                                                    style: AppStyles
                                                        .normalTextStyle(),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Customtextfield(
                                                    width: 200,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Last Name',
                                                    style: AppStyles
                                                        .normalTextStyle(),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Customtextfield(
                                                    width: 200,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Practice Name',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Customtextfield(
                                                  // width: 200,
                                                  ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "Practice or Provider's Speciality",
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          Text(
                                            'Select Upto 3',
                                            style: AppStyles.normalTextStyle()
                                                .copyWith(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w200),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                              width: 282,
                                              height: 52,
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                                left: 18,
                                                right: 14,
                                                bottom: 17,
                                              ),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    controller
                                                        .selectedOption.value,
                                                    style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(
                                                              0.36000001430511475),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  PopupMenuButton<String>(
                                                    icon: Icon(
                                                        Icons.arrow_drop_down,
                                                        color: Colors.grey),
                                                    onSelected: (String value) {
                                                      controller.selectedOption
                                                          .value = value;
                                                    },
                                                    itemBuilder: (BuildContext
                                                            context) =>
                                                        <PopupMenuEntry<
                                                            String>>[
                                                      PopupMenuItem<String>(
                                                        value: 'Option 1',
                                                        child: Text('Option 1'),
                                                      ),
                                                      PopupMenuItem<String>(
                                                        value: 'Option 2',
                                                        child: Text('Option 2'),
                                                      ),
                                                      PopupMenuItem<String>(
                                                        value: 'Option 3',
                                                        child: Text('Option 3'),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "Practice Size",
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          Text(
                                            'Include all providers at your practice (MDs, NPs, PAs, etc).',
                                            style: AppStyles.normalTextStyle()
                                                .copyWith(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w200),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            width: 280,
                                            height: 60,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              shadows: [
                                                BoxShadow(
                                                  color: Color(0x19000000),
                                                  blurRadius: 14,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "What's your role on your practice?",
                                            style: AppStyles.normalTextStyle(),
                                          ),
                                          Obx(
                                            () => radiolist(
                                                "Provider or Practice Manager",
                                                0,
                                                controller.selectedValue.value,
                                                controller.selectedValue.value),
                                          ), // Pass _selectedValue as selectedValue
                                          Obx(
                                            () => radiolist(
                                                "Office Manager",
                                                1,
                                                controller.selectedValue.value,
                                                controller.selectedValue.value),
                                          ), // Pass _selectedValue as selectedValue
                                          Obx(
                                            () => radiolist(
                                                "Receptionist",
                                                2,
                                                controller.selectedValue.value,
                                                controller.selectedValue.value),
                                          ),
                                          Obx(
                                            () => radiolist(
                                                "Other",
                                                2,
                                                controller.selectedValue.value,
                                                controller.selectedValue.value),
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Practice Name',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Customtextfield(
                                                  // width: 200,
                                                  ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Email Address',
                                                style:
                                                    AppStyles.normalTextStyle(),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Customtextfield(
                                                  // width: 200,
                                                  ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.toNamed(
                                                      kProviderSignUpPasswordRoute);
                                                },
                                                child: Container(
                                                    width: 254,
                                                    height: 58,
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFF4D91A8),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Proceed',
                                                      ),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InfoWidget()
                        ]))))));
  }

  radiolist(String title, int value, int groupvalue, int selectedValue) {
    return SizedBox(
      height: 30,
      child: RadioListTile<int>(
        title: Text(title),
        value: value,
        groupValue: groupvalue,
        onChanged: (int? value) {
          selectedValue = value!;
        },
      ),
    );
  }
}
