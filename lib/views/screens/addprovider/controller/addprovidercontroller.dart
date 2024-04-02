import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

class AddNewProviderController extends GetxController {
  GlobalKey<ScaffoldState> addnewproviderkey = GlobalKey<ScaffoldState>();
  RxString imagePath = "".obs;
  RxBool inPersonChecked = false.obs;
  RxBool videoVisitsChecked = false.obs;
  RxBool videoarechecked = false.obs;
  RxBool personareachecked = false.obs;
  Future getImageGallery() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }

  Future getImageCamera() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
