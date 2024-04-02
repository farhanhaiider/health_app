import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorBookingController extends GetxController {
  GlobalKey<ScaffoldState> doctorbookingkey = GlobalKey<ScaffoldState>();
  Rx<Color> container1Color =
      Rx<Color>(Color(0x7F0497E9)); // Initial color for container 1
  Rx<Color> container2Color =
      Rx<Color>(Colors.white); // Initial color for container 2
  Rx<BorderSide> container1BorderSide = Rx<BorderSide>(BorderSide(
    width: 1,
    color: Color(0xFF0497E9),
  )); // Initial border for container 1
  Rx<BorderSide> container2BorderSide = Rx<BorderSide>(BorderSide(
    width: 1,
    color: Colors.black.withOpacity(0.14),
  )); // Initial border for container 2

  // Function to handle container 1 tap
  void onContainer1Tap() {
    container1Color.value = Color(0x7F0497E9); // Update color for container 1
    container2Color.value = Colors.white; // Reset color for container 2
    container1BorderSide.value = BorderSide(
      width: 2,
      color: Color(0xFF0497E9),
    ); // Update border for container 1
    container2BorderSide.value = BorderSide(
      width: 1,
      color: Colors.black.withOpacity(0.14),
    ); // Reset border for container 2
  }

  // Function to handle container 2 tap
  void onContainer2Tap() {
    container1Color.value = Colors.white; // Reset color for container 1
    container2Color.value = Color(0x7F0497E9); // Update color for container 2
    container1BorderSide.value = BorderSide(
      width: 1,
      color: Color(0xFF0497E9),
    ); // Reset border for container 1
    container2BorderSide.value = BorderSide(
      width: 2,
      color: Colors.black.withOpacity(0.14),
    ); // Update border for container 2
  }
}
