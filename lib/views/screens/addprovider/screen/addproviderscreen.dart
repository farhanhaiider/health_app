import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/custom_widgets/customimage_picker.dart';
import 'package:health_app/views/custom_widgets/customtextfield1.dart';
import 'package:health_app/views/screens/addprovider/controller/addprovidercontroller.dart';

class AddNewProviderScreen extends GetView<AddNewProviderController> {
  AddNewProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: controller.addnewproviderkey,
            body: Center(
                child: Container(
                    width: _width * 0.95,
                    height: _height * 1,
                    color: Colors.white,
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70, horizontal: 60),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Add a new Provider',
                              style: AppStyles.normalTextStyle()
                                  .copyWith(fontSize: 23),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  'NPI number',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                Image.asset(
                                  klookupimg,
                                  height: 20,
                                ),
                                Text(
                                  'Look up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0497E9),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Entering your NPI is the fastest way to start seeing new patients',
                              style: AppStyles.simpletextstyle(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField1(),
                            Text(
                              'Profile Photo',
                              style: AppStyles.normalTextStyle(),
                            ),
                            SizedBox(
                                width: 606,
                                height: 43,
                                child: Text(
                                  'Choose a well-lit photo of yourself to appear on your profile an in MyHealthMatch search results to show patients who they’re booking With.',
                                  style: AppStyles.simpletextstyle(),
                                )),
                            CustomProfileImagePicker(),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'What type of visits do you want to accept?',
                              style: AppStyles.normalTextStyle(),
                            ),
                            Column(
                              children: [
                                Obx(() => CheckboxListTile(
                                      title: Text('In person'),
                                      value: controller.inPersonChecked.value,
                                      onChanged: (bool? value) {
                                        if (value != null) {
                                          controller.inPersonChecked.value =
                                              value;
                                        }
                                      },
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                    )),
                                Obx(() => CheckboxListTile(
                                      title: Text('Video visits'),
                                      value:
                                          controller.videoVisitsChecked.value,
                                      onChanged: (bool? value) {
                                        if (value != null) {
                                          controller.videoVisitsChecked.value =
                                              value;
                                        }
                                      },
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Where do you want to see to see patients?',
                              style: AppStyles.normalTextStyle(),
                            ),
                            SizedBox(
                                width: 606,
                                height: 43,
                                child: Text(
                                  'If you only see patients virtually, we’ll use this address to verify your state licence and match you to the right patients.',
                                  style: AppStyles.normalTextStyle(),
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Address',
                              style: AppStyles.normalTextStyle(),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomTextField1(
                              hintText: 'Address 1',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomTextField1(
                              hintText: 'Address 2',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomTextField1(
                              hintText: 'City',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                CustomTextField1(
                                  width: 300,
                                  hintText: 'Zip',
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Email for Appointment Notifications',
                              style: AppStyles.normalTextStyle(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'This will no be visible to public',
                              style: AppStyles.simpletextstyle(),
                            ),
                            CustomTextField1(),
                            Text(
                              'Add another',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF0497E9),
                                fontSize: 23,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: _width * 0.4,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phone',
                                        style: AppStyles.normalTextStyle(),
                                      ),
                                      CustomTextField1(
                                        width: 500,
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'Ext ',
                                                style: AppStyles
                                                    .normalTextStyle()),
                                            TextSpan(
                                                text: 'optional',
                                                style: AppStyles
                                                    .simpletextstyle()),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      CustomTextField1(
                                        width: 200,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Fax ',
                                          style: AppStyles.normalTextStyle()),
                                      TextSpan(
                                          text: 'optional',
                                          style: AppStyles.simpletextstyle()),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                CustomTextField1()
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Illinios',
                              style: AppStyles.normalTextStyle(),
                            ),
                            Column(
                              children: [
                                Obx(() => CheckboxListTile(
                                      title: SizedBox(
                                        width: 274,
                                        height: 46,
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'North Austin Avenue , Niles\n',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 19,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '(video visit )',
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(
                                                          0.5199999809265137),
                                                  fontSize: 19,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      value: controller.videoarechecked.value,
                                      onChanged: (bool? value) {
                                        if (value != null) {
                                          controller.videoarechecked.value =
                                              value;
                                        }
                                      },
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                    )),
                                Obx(() => CheckboxListTile(
                                      title: Text('North Austin Avenue,Niles'),
                                      value: controller.personareachecked.value,
                                      onChanged: (bool? value) {
                                        if (value != null) {
                                          controller.personareachecked.value =
                                              value;
                                        }
                                      },
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Add a new location',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF0497E9),
                                fontSize: 23,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: _width * 0.3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 175,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF4D91A8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    child: Center(
                                        child: SizedBox(
                                      width: 112,
                                      height: 27,
                                      child: Text(
                                        'Back',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    )),
                                  ),
                                  Container(
                                    width: 175,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF4D91A8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    child: Center(
                                        child: SizedBox(
                                      width: 112,
                                      height: 27,
                                      child: Text(
                                        'Save',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    )),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(kpracticeinforoute);
                                    },
                                    child: Container(
                                      width: 175,
                                      height: 60,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF4D91A8),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: Center(
                                          child: SizedBox(
                                        width: 112,
                                        height: 27,
                                        child: Text(
                                          'Next',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ))))));
  }
}
