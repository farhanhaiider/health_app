import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_styles.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: _width * 1,
      color: Color(0xFFA7C5D0),
      child: SizedBox(
        height: 250,
        width: _width * 0.9,
        child: Row(
          children: [
            SizedBox(
              width: _width * 0.4,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company Info',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'About Us',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Carrier',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'We are hiring',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Blog',
                          style: AppStyles.infoTextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(width: 65),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Legal',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'About Us',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Carrier',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'We are hiring',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Blog',
                          style: AppStyles.infoTextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 63,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Business Marketing',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'User Analytic',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Live Chat',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Unlimites Support',
                          style: AppStyles.infoTextStyle(),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recources',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Ios and Android',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Watch a Demo',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Customers',
                          style: AppStyles.infoTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Customers',
                          style: AppStyles.infoTextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Row(
                  children: [
                    Image.asset(
                      kfacebookimage,
                      scale: 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      kinstagramimage,
                      scale: 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      ktwitterimage,
                      scale: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
