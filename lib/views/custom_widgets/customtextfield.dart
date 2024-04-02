import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customtextfield extends StatelessWidget {
  final IconData? sufixxIcon;
  final double? width;

  const Customtextfield({Key? key, this.sufixxIcon, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      child: TextField(
        decoration: InputDecoration(
          // hintText: 'Enter text',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          suffixIcon: sufixxIcon != null ? Icon(sufixxIcon) : null,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.black, width: 4),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        ),
      ),
    );
  }
}
