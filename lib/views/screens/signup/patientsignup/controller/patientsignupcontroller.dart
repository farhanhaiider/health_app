import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class PatientSignupController extends GetxController {
  GlobalKey<ScaffoldState> PateintSignupkey = GlobalKey<ScaffoldState>();
  RxString selectedOption = 'Option 1'.obs;
  RxInt selectedValue = 0.obs;
}
