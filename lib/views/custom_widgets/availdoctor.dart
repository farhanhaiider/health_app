import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/app_styles.dart';

class AvailDoctor extends StatelessWidget {
  const AvailDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: _width * 0.40,
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(kdoctorbookingroute);
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(kdoctorimg),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text('Dr.Omer Hawasli, MD',
                        style:
                            AppStyles.normalTextStyle().copyWith(fontSize: 16)),
                  ),
                  Text(
                    'Pediatrician',
                    style: AppStyles.normalTextStyle().copyWith(fontSize: 10),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        '4.5',
                        style:
                            AppStyles.normalTextStyle().copyWith(fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      Text(
                        '0.4 mi 535 w 110th ST, Ste 1E, New york,NY\n10025',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inria Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        kaddimg,
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'In-network patients only.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'See if they’re in \nnetwork',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'New patient appointments. Also offers video visits.\nHighly recommended',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 39,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 82,
                          decoration: BoxDecoration(color: Color(0xFF095D7E)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 50,
                          height: 82,
                          decoration: BoxDecoration(color: Color(0xFFECECEC)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 50,
                          height: 82,
                          decoration: BoxDecoration(color: Color(0xFF095D7E)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 50,
                          height: 82,
                          decoration: BoxDecoration(color: Color(0xFFECECEC)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: 50,
                            height: 82,
                            decoration:
                                BoxDecoration(color: Color(0xFF095D7E))),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 82,
                        decoration: BoxDecoration(color: Color(0xFFECECEC)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 50,
                        height: 82,
                        decoration: BoxDecoration(color: Color(0xFFECECEC)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 50,
                        height: 82,
                        decoration: BoxDecoration(color: Color(0xFF095D7E)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 50,
                        height: 82,
                        decoration: BoxDecoration(color: Color(0xFFECECEC)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 50,
                          height: 82,
                          decoration: BoxDecoration(color: Color(0xFF095D7E)))
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'View all availability',
                style: TextStyle(
                  color: Color(0xFF0024A7),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  height: 0,
                ),
              )),
          Divider(),
        ],
      ),
    );
  }
}
