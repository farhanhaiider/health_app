import 'dart:io';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:health_app/utils/app_images.dart';
import 'package:health_app/utils/app_styles.dart';
import 'package:health_app/views/screens/addprovider/controller/addprovidercontroller.dart';

class CustomProfileImagePicker extends StatefulWidget {
  const CustomProfileImagePicker({super.key});

  @override
  State<CustomProfileImagePicker> createState() =>
      _CustomProfileImagePickerState();
}

class _CustomProfileImagePickerState extends State<CustomProfileImagePicker> {
  AddNewProviderController controller = Get.put(AddNewProviderController());
  Future<void> _getImageFromCameraOrGallery(BuildContext context) async {
    final pickedFile = await showModalBottomSheet<File?>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(top: 20),
          child: Wrap(
            children: <Widget>[
              Center(
                child: Text(
                  'Choose your preference',
                  style: AppStyles.normalTextStyle().copyWith(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.camera,
                  color: Colors.black,
                ),
                title: Text(
                  'Camera',
                  style: AppStyles.normalTextStyle().copyWith(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                onTap: () async {
                  Navigator.pop(context);
                  controller.getImageCamera();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_library,
                  color: Colors.black,
                ),
                title: Text(
                  'Gallery',
                  style: AppStyles.normalTextStyle().copyWith(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                onTap: () async {
                  Navigator.pop(context);
                  controller.getImageGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Obx(
            () => Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: controller.imagePath.isEmpty
                    ? CircleAvatar(
                        radius: 120,
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.grey,
                        backgroundImage: AssetImage(kimgpicker))
                    : Obx(
                        () => CircleAvatar(
                            radius: 120,
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.grey,
                            backgroundImage: FileImage(
                                File(controller.imagePath.toString()))),
                      )),
          ),
          GestureDetector(
            onTap: () async {
              _getImageFromCameraOrGallery(context);
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(6),
              child: Icon(
                Icons.edit,
                color: Colors.grey,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
